#!/usr/bin/env bun

const REPO = "indent-com/blit";

type Binary = {
  name: string;
  desc: string;
  service?: boolean;
};

const BINARIES: readonly Binary[] = [
  { name: "blit", desc: "Low-latency terminal streaming client" },
  { name: "blit-server", desc: "Low-latency terminal streaming server", service: true },
  { name: "blit-gateway", desc: "Low-latency terminal streaming WebSocket gateway", service: true },
];

const PLATFORMS = [
  { os: "darwin", arch: "aarch64" },
  { os: "linux", arch: "x86_64" },
  { os: "linux", arch: "aarch64" },
] as const;

async function sha256(url: string): Promise<string> {
  const res = await fetch(url, { redirect: "follow" });
  if (!res.ok) throw new Error(`GET ${url}: ${res.status}`);
  const hash = new Bun.CryptoHasher("sha256").update(await res.arrayBuffer()).digest("hex");
  return hash;
}

function formulaClass(name: string): string {
  return name.split("-").map((w) => w[0].toUpperCase() + w.slice(1)).join("");
}

function installBlock(bin: Binary): string {
  if (!bin.service) {
    return `  def install
    bin.install "${bin.name}"
  end`;
  }
  return `  def install
    bin.install "${bin.name}"
    (etc/"blit").mkpath
    (etc/"blit/${bin.name}.env").write "" unless (etc/"blit/${bin.name}.env").exist?
  end`;
}

function serviceBlock(bin: Binary): string {
  if (!bin.service) return "";
  return `
  service do
    run ["/bin/sh", "-c", ". #{etc}/blit/${bin.name}.env 2>/dev/null; exec #{opt_bin}/${bin.name}"]
    keep_alive true
    log_path var/"log/${bin.name}.log"
    error_log_path var/"log/${bin.name}.log"
  end
`;
}

async function main() {
  let version = process.argv[2]?.replace(/^v/, "");
  if (!version) {
    const res = await fetch(`https://api.github.com/repos/${REPO}/releases/latest`);
    if (!res.ok) throw new Error(`GitHub API: ${res.status}`);
    version = ((await res.json()).tag_name as string).replace(/^v/, "");
  }
  console.log(`version: ${version}`);

  for (const bin of BINARIES) {
    process.stdout.write(`${bin.name}: `);

    const hashes = new Map<string, string>();
    for (const p of PLATFORMS) {
      const url = `https://github.com/${REPO}/releases/download/v${version}/${bin.name}_${version}_${p.os}_${p.arch}.tar.gz`;
      process.stdout.write(`${p.os}/${p.arch} `);
      hashes.set(`${p.os}_${p.arch}`, await sha256(url));
    }
    console.log("ok");

    const urlBase = `https://github.com/${REPO}/releases/download/v${version}/${bin.name}_${version}`;

    const rb = `class ${formulaClass(bin.name)} < Formula
  desc "${bin.desc}"
  homepage "https://blit.sh"
  version "${version}"
  license "MIT"

  on_macos do
    on_arm do
      url "${urlBase}_darwin_aarch64.tar.gz"
      sha256 "${hashes.get("darwin_aarch64")}"
    end
  end

  on_linux do
    on_intel do
      url "${urlBase}_linux_x86_64.tar.gz"
      sha256 "${hashes.get("linux_x86_64")}"
    end
    on_arm do
      url "${urlBase}_linux_aarch64.tar.gz"
      sha256 "${hashes.get("linux_aarch64")}"
    end
  end

${installBlock(bin)}
${serviceBlock(bin)}
  test do
    assert_match version.to_s, shell_output("#{bin}/${bin.name} --version")
  end
end
`;

    await Bun.write(`Formula/${bin.name}.rb`, rb);
  }

  console.log("done");
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});

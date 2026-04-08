#!/usr/bin/env bun

const REPO = "indent-com/blit";

const NAME = "blit";
const DESC = "Low-latency terminal streaming client";

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

async function main() {
  let version = process.argv[2]?.replace(/^v/, "");
  if (!version) {
    const res = await fetch(`https://api.github.com/repos/${REPO}/releases/latest`);
    if (!res.ok) throw new Error(`GitHub API: ${res.status}`);
    version = ((await res.json()).tag_name as string).replace(/^v/, "");
  }
  console.log(`version: ${version}`);

  process.stdout.write(`${NAME}: `);

  const hashes = new Map<string, string>();
  for (const p of PLATFORMS) {
    const url = `https://github.com/${REPO}/releases/download/v${version}/${NAME}_${version}_${p.os}_${p.arch}.tar.gz`;
    process.stdout.write(`${p.os}/${p.arch} `);
    hashes.set(`${p.os}_${p.arch}`, await sha256(url));
  }
  console.log("ok");

  const urlBase = `https://github.com/${REPO}/releases/download/v${version}/${NAME}_${version}`;

  const rb = `class Blit < Formula
  desc "${DESC}"
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

  def install
    bin.install "${NAME}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/${NAME} --version")
  end
end
`;

  await Bun.write(`Formula/${NAME}.rb`, rb);

  console.log("done");
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});

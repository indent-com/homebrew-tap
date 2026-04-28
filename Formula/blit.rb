class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.30.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.30.1/blit_0.30.1_darwin_aarch64.tar.gz"
      sha256 "5527223a4e4974669f7c2fde00745ee9300eef0958d81974dd41df3dce90f96a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.30.1/blit_0.30.1_linux_x86_64.tar.gz"
      sha256 "fdad8842347d276d939644afc0e68bf6fcf85f601a5aa970ae4e15a1e72ec51a"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.30.1/blit_0.30.1_linux_aarch64.tar.gz"
      sha256 "707ae303d75082ad8637f6b2ee6026ab2ea7ecb8d4edf065fc08338185490e30"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.41.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.1/blit_0.41.1_darwin_aarch64.tar.gz"
      sha256 "335f776f8e122024c908904d7938fffe0b5d85c157684b92975b7c84b22168ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.41.1/blit_0.41.1_linux_x86_64.tar.gz"
      sha256 "a6b1ba25be3a4efe7b94ec04723f87826fd8a01fdeda3cab550617b60a85b18d"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.1/blit_0.41.1_linux_aarch64.tar.gz"
      sha256 "580dd5fd66819da3bc7b2b4529f252ae77424e4d184a3e44d61181704b42139d"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

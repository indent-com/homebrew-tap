class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.32.1/blit_0.32.1_darwin_aarch64.tar.gz"
      sha256 "c981cf831be726bf7546631a854a4b208821d10e274a904a3d43724845b0c140"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.32.1/blit_0.32.1_linux_x86_64.tar.gz"
      sha256 "e50131c39ad98e9fdfab811f01fd1a5a3664a01e4e767f1652ccaea199d838d4"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.32.1/blit_0.32.1_linux_aarch64.tar.gz"
      sha256 "d4ed0d22c875688ee5dd22225442c7d73d8edd2ba09c7a95cf06e08381664116"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

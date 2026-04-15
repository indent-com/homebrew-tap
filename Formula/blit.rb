class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.24.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.24.1/blit_0.24.1_darwin_aarch64.tar.gz"
      sha256 "13c490c2402cc42dbaba56a7875e49558764ca547fa7d139a7e7f5df488394b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.24.1/blit_0.24.1_linux_x86_64.tar.gz"
      sha256 "c424f64329a233e248f396c4322c6f835fd1fe052af7a9e3aeb18089e37dd39a"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.24.1/blit_0.24.1_linux_aarch64.tar.gz"
      sha256 "c6fb424e3af195e687e5cc2c141110d799073246d29d0e46d85d914b9fd14ab0"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.0/blit_0.41.0_darwin_aarch64.tar.gz"
      sha256 "e86d7973e064e642f33458da32d6287457e9021b0ddc9b144935fa241ceae201"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.41.0/blit_0.41.0_linux_x86_64.tar.gz"
      sha256 "877be2171367880ca3a8e017b527d06afeddd2e3c3eb0b9d7069baba33cedaf4"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.0/blit_0.41.0_linux_aarch64.tar.gz"
      sha256 "2a6e50d944e3ae80283771929de703166c61724c89d4eac26be7cc75d07626e7"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

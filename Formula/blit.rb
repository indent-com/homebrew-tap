class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.35.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.5/blit_0.35.5_darwin_aarch64.tar.gz"
      sha256 "45ec991969707ac2d7f206041bbdb618716b58771496d29d4f513d6cd9958ffd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.35.5/blit_0.35.5_linux_x86_64.tar.gz"
      sha256 "090cb8d4cbb4e771223683829e52c309bde76fe9120ffb57b8875bddc84c5130"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.5/blit_0.35.5_linux_aarch64.tar.gz"
      sha256 "30631e3265aaee1ead6ef0ad107fcd81be6650bf09e0e4de00975c7ce3ebadf3"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

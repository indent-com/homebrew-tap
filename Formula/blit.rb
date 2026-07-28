class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.39.0/blit_0.39.0_darwin_aarch64.tar.gz"
      sha256 "582bbd698db55b586a26166aadcf6000d5b3b2284ceab13ce9670bf1ed236cdb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.39.0/blit_0.39.0_linux_x86_64.tar.gz"
      sha256 "7f01fbb385a6f24522c74c0f3f5e5e2d3d19d1520c637fbead9a9fd37eaa080f"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.39.0/blit_0.39.0_linux_aarch64.tar.gz"
      sha256 "b6acb75ee320fcc6fde1931d307d697425be3cdb952b9945c0800d9ace58bedd"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

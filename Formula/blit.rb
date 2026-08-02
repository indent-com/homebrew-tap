class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.41.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.3/blit_0.41.3_darwin_aarch64.tar.gz"
      sha256 "2bf1d3805d33d807dce56bc52a4e7d59d1655d36a957ce67fb23b973543723a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.41.3/blit_0.41.3_linux_x86_64.tar.gz"
      sha256 "95cd73bc0e3bc038ce0878a8c19029cc5276ddc0b54d101c63d877b0254ca225"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.3/blit_0.41.3_linux_aarch64.tar.gz"
      sha256 "d16db635842ffa1ebe539ab8f2d67d1168c44248ffccbfdf13c839f58c98e7bd"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

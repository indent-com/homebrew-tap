class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.41.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.2/blit_0.41.2_darwin_aarch64.tar.gz"
      sha256 "741fe907460daade41d78b5e9722da2c3abfb9065c1962f34e9a52bd1bcf1172"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.41.2/blit_0.41.2_linux_x86_64.tar.gz"
      sha256 "15d780a55470c00102cc2e3c50958fe35588bdfc465ac6166c42dc2a683d8536"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.2/blit_0.41.2_linux_aarch64.tar.gz"
      sha256 "5768b15b0542a6f94408f208f0ca9503b9dc3519d4317b31b90a21e2c822d68d"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.51.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.51.1/blit_0.51.1_darwin_aarch64.tar.gz"
      sha256 "102ccb5f0c2694e927000c5cc8d950e2b63bd16c5d49a9d1544c2ce01ccbfa51"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.51.1/blit_0.51.1_linux_x86_64.tar.gz"
      sha256 "adeefccbfddc98384665030515db0224d1dfc8616fd384e38eaafd952cb94540"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.51.1/blit_0.51.1_linux_aarch64.tar.gz"
      sha256 "57451222cda28bc0040c7938a3855f06b418f107e15d32d9e04049239f775c4e"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

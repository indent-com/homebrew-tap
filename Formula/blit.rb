class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.50.0/blit_0.50.0_darwin_aarch64.tar.gz"
      sha256 "41fc047a654cfd63dd50992437f5adb2e14816b4f385f64d8b3d6e9e630b07f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.50.0/blit_0.50.0_linux_x86_64.tar.gz"
      sha256 "c5d34c43d9e0fb382f49b36c38acdfcefde3eb67eea9a2c80e30503957b2701c"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.50.0/blit_0.50.0_linux_aarch64.tar.gz"
      sha256 "8b60c6a4238fc0958656c0322ea0aadf4a912e9c221e5e3929c73dd451362c84"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

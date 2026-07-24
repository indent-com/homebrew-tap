class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.38.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.38.1/blit_0.38.1_darwin_aarch64.tar.gz"
      sha256 "5d446af614ea2622a86a98793db618bd70d1351af84c37746dcbfbf293458a62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.38.1/blit_0.38.1_linux_x86_64.tar.gz"
      sha256 "1a0273095f558d79ced0ecd28c472fcf75f926df56cbb9d689a1f5331fa31151"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.38.1/blit_0.38.1_linux_aarch64.tar.gz"
      sha256 "362b794b9b9707d90d8feea3a7a60fe42932f5640204eb995fd7127dd5fe79ea"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

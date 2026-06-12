class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.0/blit_0.35.0_darwin_aarch64.tar.gz"
      sha256 "0c7a627e9713732b98286623f11eaea28cff20d1d3d24de62830c5263394d932"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.35.0/blit_0.35.0_linux_x86_64.tar.gz"
      sha256 "86584a40ab667baa9e8c40f5a57831d35b2d1bd12b2e78bbb5f6f26d375a3c38"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.0/blit_0.35.0_linux_aarch64.tar.gz"
      sha256 "40581db991b2550fe70e801f5a33691009066e7b95e7acc5446208f46d345550"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

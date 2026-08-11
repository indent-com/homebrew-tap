class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.48.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.48.1/blit_0.48.1_darwin_aarch64.tar.gz"
      sha256 "adc5e4c35a8879767839c42f96300a09a7ada24cfff7c70f74ad2a70d7ccec69"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.48.1/blit_0.48.1_linux_x86_64.tar.gz"
      sha256 "645b3d951d4bb11dccf01374eede091ddcdf10497549c9f7f244ecd517d29a5f"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.48.1/blit_0.48.1_linux_aarch64.tar.gz"
      sha256 "de583b3f82ee853329b468178bae17288bd6cba933da389cec661c741bd1c99c"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

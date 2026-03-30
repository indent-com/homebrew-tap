class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.2/blit_0.12.2_darwin_aarch64.tar.gz"
      sha256 "6bf608f1735afbdc18a53bd9b22f1f98cf7e870215ffbf1f99275624f6ec0169"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.12.2/blit_0.12.2_linux_x86_64.tar.gz"
      sha256 "219956142c1234f2d59b4cdec1202b372c44b3c14e99061c0e227264faf1d08e"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.2/blit_0.12.2_linux_aarch64.tar.gz"
      sha256 "a9c92c5102fcfc527da537778e46c4cc40cb534e6c646586a4141a32b16dc97b"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

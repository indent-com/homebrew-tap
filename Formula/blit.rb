class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.48.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.48.3/blit_0.48.3_darwin_aarch64.tar.gz"
      sha256 "249d927b4a747a00e2686e260511f580a30c312e95065ebafc9ec58853309990"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.48.3/blit_0.48.3_linux_x86_64.tar.gz"
      sha256 "56222bb78a813f2d92ac406f59f65e5d4a40b20d750134039ee9e5387893550d"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.48.3/blit_0.48.3_linux_aarch64.tar.gz"
      sha256 "01fc599608481b90ab66dfa4b20294cd88623d6ecce77fabc803d947423da790"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

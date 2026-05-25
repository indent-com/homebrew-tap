class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.33.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.6/blit_0.33.6_darwin_aarch64.tar.gz"
      sha256 "c04c09e59bb98b1efabc26b586563f473141ca7ec30a94f08c042270ae2797ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.33.6/blit_0.33.6_linux_x86_64.tar.gz"
      sha256 "666b3aa5e04615f6be6cae419c716651d9b40f658879a4441b8b87dab262b336"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.6/blit_0.33.6_linux_aarch64.tar.gz"
      sha256 "562ebedd5b51e5a64041c463bd0ba28d7a8a3c7b2a5871e1a8ab52801c58d547"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

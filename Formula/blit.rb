class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.48.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.48.2/blit_0.48.2_darwin_aarch64.tar.gz"
      sha256 "cd087f9bc2479b6cb0da5330701448f4ca2f32b29a89d1929806b795270186b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.48.2/blit_0.48.2_linux_x86_64.tar.gz"
      sha256 "3c3bdff4d7789d41bcd3c68bacbf11141ee4c7be04cd56f982bc47c95ad78ed7"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.48.2/blit_0.48.2_linux_aarch64.tar.gz"
      sha256 "3c729b06c9a2cf96d95a33f7293f8595669b5caf6e8ed00282e8a78ab820717e"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

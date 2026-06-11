class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.34.0/blit_0.34.0_darwin_aarch64.tar.gz"
      sha256 "f4d9351605016f7e86799a0860a048ede0dfc8c2a8eaad5b326f98338464dc8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.34.0/blit_0.34.0_linux_x86_64.tar.gz"
      sha256 "82928fb04e1376044a0b2724ba7f8c6c114e5b14ddf0f902ce27304102af7609"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.34.0/blit_0.34.0_linux_aarch64.tar.gz"
      sha256 "8f4751d7e7cd81d845e364415fcc8f86b9e27709b92f694d8ff856f3c6b173ef"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

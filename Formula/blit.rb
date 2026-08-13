class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.51.0/blit_0.51.0_darwin_aarch64.tar.gz"
      sha256 "7274d9a5c71491de9238552d9b58f95f7c2d7ae24cbac0051eb47cb20743903e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.51.0/blit_0.51.0_linux_x86_64.tar.gz"
      sha256 "7ad8f272fac24c29d3b350bf4f9c544288e40f45bd70f683379c7cc2255b8d6e"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.51.0/blit_0.51.0_linux_aarch64.tar.gz"
      sha256 "093dee09fa00d322c8ce91de2e9b8635a1ec9acf7b19ae76b233c8accf9e9997"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

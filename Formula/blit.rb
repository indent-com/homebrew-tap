class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.32.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.32.2/blit_0.32.2_darwin_aarch64.tar.gz"
      sha256 "084f71bb1577d63e9ad979b2d15e6cb09280863c21b02630547ecd042b6ddfa4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.32.2/blit_0.32.2_linux_x86_64.tar.gz"
      sha256 "2a5dee694cb388f427d3f298abcf7f5de642da0d634cedf663dac41056fb7797"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.32.2/blit_0.32.2_linux_aarch64.tar.gz"
      sha256 "4ba460aefcc3dc3a2babbcd486122af621913f876a16b9c44ca9a51978d0f2a7"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

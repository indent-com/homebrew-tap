class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.33.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.2/blit_0.33.2_darwin_aarch64.tar.gz"
      sha256 "ce7bd29e66770b0d99915cc5d02a612774a292897c9edb8c53ffc34c77c2b8d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.33.2/blit_0.33.2_linux_x86_64.tar.gz"
      sha256 "7fce54a4738e96363a1027860286a7cd3932e1db8e3a39cec1bccb1cd195c3c1"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.2/blit_0.33.2_linux_aarch64.tar.gz"
      sha256 "de56ad2410870a8edb134f06cb328a58c08cd2b860a288bdffe39e442b5e3ca5"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

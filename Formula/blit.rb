class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.0/blit_0.27.0_darwin_aarch64.tar.gz"
      sha256 "f609daa01dfbdd2a50b33c00a39c822069cd3beb7d4555da2c1af607818d8dab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.27.0/blit_0.27.0_linux_x86_64.tar.gz"
      sha256 "9e1998146bd43b1a8bab4eafd09c3494ca097794920fa1fc40f974728dfc46bd"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.0/blit_0.27.0_linux_aarch64.tar.gz"
      sha256 "90b7c2a67386b0255fc9e5ebbdd297b3c75bbdee262a859b73e74247aab344f4"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

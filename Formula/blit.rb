class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.0/blit_0.33.0_darwin_aarch64.tar.gz"
      sha256 "e8425f54a8c071237a4840611a2d21acb98cddea10ba766a3d4eebc152bfd7b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.33.0/blit_0.33.0_linux_x86_64.tar.gz"
      sha256 "85c30f0acfc35127c356c40885836f87ec95d2c1cc9c8857a156659d6f803fbc"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.0/blit_0.33.0_linux_aarch64.tar.gz"
      sha256 "2551158cb3d700541d8055ef3bcde5a1a4c8d8fb74db2db9a728f08d9e567144"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

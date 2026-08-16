class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.53.0/blit_0.53.0_darwin_aarch64.tar.gz"
      sha256 "75312f4ea87f04094784a6b1c40f47909c92a863526d23552d62d9ae3e4dde00"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.53.0/blit_0.53.0_linux_x86_64.tar.gz"
      sha256 "ba61a8883f81f83d7575d82a7fb52f88518dd894e9f04e837c76ade19432d265"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.53.0/blit_0.53.0_linux_aarch64.tar.gz"
      sha256 "964042abb7a31260c0df400c3ebb1617ed66bae387c0bd25849f4b54554bb361"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

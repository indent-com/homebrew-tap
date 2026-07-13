class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.35.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.4/blit_0.35.4_darwin_aarch64.tar.gz"
      sha256 "58f731dfa80bac9af77f75a26e503b43147651710ecfbdb2c1427eeec451eb0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.35.4/blit_0.35.4_linux_x86_64.tar.gz"
      sha256 "0e73623af1b21cf34d10122cd4ca385bfdb0917b58a41cc7c2aee51b7d52574f"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.4/blit_0.35.4_linux_aarch64.tar.gz"
      sha256 "aeef4f3667272c5402c5100f0abe035e032f8629fc5764363c9d3534f47babf1"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

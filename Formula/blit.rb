class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.40.0/blit_0.40.0_darwin_aarch64.tar.gz"
      sha256 "50d397dd8b50ac1fab18c803f7f03e583f6b305846cda0969dbdfd545e4a59e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.40.0/blit_0.40.0_linux_x86_64.tar.gz"
      sha256 "7016ad2a8c861d77a04bee8d32e57896af2af1456dec74d0623c863dd4e0f527"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.40.0/blit_0.40.0_linux_aarch64.tar.gz"
      sha256 "25715b56615fb0d3f7b190ff3b2147cb007a3f4208bdec78bfe16013dd010608"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

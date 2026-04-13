class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.24.0/blit_0.24.0_darwin_aarch64.tar.gz"
      sha256 "1196665c6d9941bd2020ef67c8a39e792d5f40ce99991c83c9402448983b2bd1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.24.0/blit_0.24.0_linux_x86_64.tar.gz"
      sha256 "5503ef2725b00c2dcf12cac2378ee47d3987ca9c61d6b4530c3dcdbcb2efb0ba"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.24.0/blit_0.24.0_linux_aarch64.tar.gz"
      sha256 "a8544ba783fac191a8759efc66769f113c6fc50dae7bbb7859cbbdef5e299f7c"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

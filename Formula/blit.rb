class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.45.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.45.1/blit_0.45.1_darwin_aarch64.tar.gz"
      sha256 "a801215d710d700605462ab5a293c1d758590ec4b9960078aecf2a31afc3addb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.45.1/blit_0.45.1_linux_x86_64.tar.gz"
      sha256 "baaa4a3a7ca4928527660386ea440cb5ed0e56d716483c890166e49f2735e7dc"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.45.1/blit_0.45.1_linux_aarch64.tar.gz"
      sha256 "72851fee83a492bb504d118e125aa37f8c03f9aade17e529769e465f761386e0"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.42.0/blit_0.42.0_darwin_aarch64.tar.gz"
      sha256 "cc667a204023dad8c28c63c3e9bda9d87d7ca072895fa6e95d81b57f14cca56c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.42.0/blit_0.42.0_linux_x86_64.tar.gz"
      sha256 "5eb75d40664dbbd3799a007044d0c592070c42dd1809f6cc963d381443716916"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.42.0/blit_0.42.0_linux_aarch64.tar.gz"
      sha256 "d7db88db5c9fc2f62c8a62c8c94355cba53bf2b09bf27930d96aa73714d2d5a0"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.28.1/blit_0.28.1_darwin_aarch64.tar.gz"
      sha256 "21a8cd1832ed1f93d18de3c18ca2e56eff565a01a03fbd56376ac407e7924b60"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.28.1/blit_0.28.1_linux_x86_64.tar.gz"
      sha256 "80518533810feabfb3b315097b528667e024ad607530d94b5cff523d16b16231"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.28.1/blit_0.28.1_linux_aarch64.tar.gz"
      sha256 "cbec403046387d9be73764b8b22dd2a63e4995ba3a32cdc61acd38ccf9457fc8"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

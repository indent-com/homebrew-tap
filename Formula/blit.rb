class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.55.0/blit_0.55.0_darwin_aarch64.tar.gz"
      sha256 "c47e18dc77196ac1da7922c7f96ded2f307fbd5156eec8463928b7fd0811df22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.55.0/blit_0.55.0_linux_x86_64.tar.gz"
      sha256 "aa277be886391d2e9c3f4452d9e44148675781b11c798c98ae3794fdb60391e8"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.55.0/blit_0.55.0_linux_aarch64.tar.gz"
      sha256 "5d061dc0389b0d66a3d43be66d6d5b5d92c3e7f6e775e50286ab57f9ea3e974c"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

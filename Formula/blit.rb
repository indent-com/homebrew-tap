class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.33.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.4/blit_0.33.4_darwin_aarch64.tar.gz"
      sha256 "585db880c85933ed625388d3dfdd42d4da85685948e211a90267646004a5b190"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.33.4/blit_0.33.4_linux_x86_64.tar.gz"
      sha256 "ece3a6a75e801e799ff18edefb33b7a76c3c93c2d94a1141635da766c495f3cf"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.4/blit_0.33.4_linux_aarch64.tar.gz"
      sha256 "dfef5f8eef1d84decf7ac076ed130e2a183a6c7279353ef2d0a207213c9d354d"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

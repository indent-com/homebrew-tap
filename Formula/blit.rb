class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.45.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.45.2/blit_0.45.2_darwin_aarch64.tar.gz"
      sha256 "4f860de67ebe2f4fbc9e321fcefa03de378a241ec333b0e7a6617feff7f37576"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.45.2/blit_0.45.2_linux_x86_64.tar.gz"
      sha256 "baefb955b7d019949f5b96ff16400c6d2cd99637929c174f3014ce49371d2f65"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.45.2/blit_0.45.2_linux_aarch64.tar.gz"
      sha256 "3c83bc4276084253caf5d7ab0c2246a7d3da411df3dace1e99f1d2f6a8a02576"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

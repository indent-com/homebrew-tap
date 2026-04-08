class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.21.0/blit_0.21.0_darwin_aarch64.tar.gz"
      sha256 "38979a6962b321a0e6f2e9b13b66ac797e737db276706be811c86815e8375a58"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.21.0/blit_0.21.0_linux_x86_64.tar.gz"
      sha256 "e04579224f07301313443f301644b5452ec01383492da891d81ef1487788037e"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.21.0/blit_0.21.0_linux_aarch64.tar.gz"
      sha256 "99afd2015a35f17b48d08371844ba795ba093af3eccb995050209534d223f289"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

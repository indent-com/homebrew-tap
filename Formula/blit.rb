class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.47.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.47.1/blit_0.47.1_darwin_aarch64.tar.gz"
      sha256 "60fa41459cea2309d2a9a2006188277d731788b6fc4031cbada89155a548b492"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.47.1/blit_0.47.1_linux_x86_64.tar.gz"
      sha256 "acb3872a9a2497e4a0fec08da5378004e083c70472b7340e13d9751133cce6c1"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.47.1/blit_0.47.1_linux_aarch64.tar.gz"
      sha256 "97c48f767b5d17fdde39cb3924557f5e0a953c00aa5bfb7587aec00b2e688548"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

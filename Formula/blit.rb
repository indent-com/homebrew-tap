class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.31.0/blit_0.31.0_darwin_aarch64.tar.gz"
      sha256 "d1fe7052091a031b2003083c4af408b95728b74b935daee72742164f86066b08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.31.0/blit_0.31.0_linux_x86_64.tar.gz"
      sha256 "43708cb3bcb4fd91b816cd7e3c6e55e8255b97fd60dff569711242688265d18e"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.31.0/blit_0.31.0_linux_aarch64.tar.gz"
      sha256 "4143fd49d91b50f7326b16414a29d5a1ad9055db1ddf828bb6ccb834eb5a2872"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.54.0/blit_0.54.0_darwin_aarch64.tar.gz"
      sha256 "b39bbafc62ef6056fecd11ed613a6df862837372dc547ec31ffca96acfa96216"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.54.0/blit_0.54.0_linux_x86_64.tar.gz"
      sha256 "5ab903a241ed9af5e43e5f7e31d409ec22bcbf8f357c52ff754dee9e65d78f6f"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.54.0/blit_0.54.0_linux_aarch64.tar.gz"
      sha256 "be8031404b4e44f03552fa8b7993e7ccc2c501e42ce1a290ab79c3805715de1b"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

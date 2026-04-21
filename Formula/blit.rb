class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.28.0/blit_0.28.0_darwin_aarch64.tar.gz"
      sha256 "3a4635c740deaa7e92c151ea886d11f17074349d06872fe17c03dc867b8c827c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.28.0/blit_0.28.0_linux_x86_64.tar.gz"
      sha256 "a0d04bfcd73e61c5a34cf51e3728b55269ff3e2455ced399ff2c0f77627db6c5"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.28.0/blit_0.28.0_linux_aarch64.tar.gz"
      sha256 "3dd8a1ae817afa09896952bba29255b8e1c8cd7493ef28bc5a9541b550430d36"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.53.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.53.2/blit_0.53.2_darwin_aarch64.tar.gz"
      sha256 "d5fd474341710ef5b63e349d3a7fd66e20a73b163738254a8ed0896f9bf156ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.53.2/blit_0.53.2_linux_x86_64.tar.gz"
      sha256 "a2d66e334d172cc86a6b75948c46bff0f22dd38d09e2813b3d4c2835cc7e723f"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.53.2/blit_0.53.2_linux_aarch64.tar.gz"
      sha256 "0bbc7fe6d47255a165abbc5ff585242e0f1d0b134374603dafd1593c2d71f5ac"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

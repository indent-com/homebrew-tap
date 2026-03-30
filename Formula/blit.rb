class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.0/blit_0.12.0_darwin_aarch64.tar.gz"
      sha256 "78619213e8dc4c10e0547a80b3bacee34346d364da3c58d4007ce6ac85b5da63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.12.0/blit_0.12.0_linux_x86_64.tar.gz"
      sha256 "ceaa930046d9b0f02b5cdc3ee78ebdc4ac2a29b90973b69a36577f44f4a881e3"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.0/blit_0.12.0_linux_aarch64.tar.gz"
      sha256 "5d96ff15935aeb546577319be70622d19b696fd63f0de692df805b59ce2b38eb"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

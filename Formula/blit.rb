class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.25.0/blit_0.25.0_darwin_aarch64.tar.gz"
      sha256 "73a89bf132fd93fa4298bb2c57de87b6b7b31132a157b516e301990a1083d432"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.25.0/blit_0.25.0_linux_x86_64.tar.gz"
      sha256 "6bfe1b359783fedc3209079a49c2dc6556af67e9e78c99ea62647e52462cddae"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.25.0/blit_0.25.0_linux_aarch64.tar.gz"
      sha256 "6cad0cc74ba08697aa78ce6dfeaf2c64afe357aee2cf567317a086375ad91b2f"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

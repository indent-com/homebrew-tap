class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.23.0/blit_0.23.0_darwin_aarch64.tar.gz"
      sha256 "4c5fe1b69e95c439c2d60a7bb61bf7565d334edb080e23e2adf6554bef0a1d12"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.23.0/blit_0.23.0_linux_x86_64.tar.gz"
      sha256 "836cf6c2ba64efb4bdd4473a0cf8e24ca9616cb33006a7768e81a510a711572d"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.23.0/blit_0.23.0_linux_aarch64.tar.gz"
      sha256 "b97d680fd0e3da87a01f7f7ad0d833fa8ad369cb60d471a9164ebb0f1e84db7f"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

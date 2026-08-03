class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.44.0/blit_0.44.0_darwin_aarch64.tar.gz"
      sha256 "448dc50f1e09c3ba9d26b9299803197912584ce8d64c619963eb5ecf05f55fc4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.44.0/blit_0.44.0_linux_x86_64.tar.gz"
      sha256 "89a36d88cf0b375df1016b6ac7c8593598cdeba8b7867844bc0f3e125f9b5f9d"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.44.0/blit_0.44.0_linux_aarch64.tar.gz"
      sha256 "d4e304fe4c3061d08d4f13eb056df0324cb0b0a615cbc8b5b7d103ef57193569"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

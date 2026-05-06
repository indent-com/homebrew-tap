class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.33.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.1/blit_0.33.1_darwin_aarch64.tar.gz"
      sha256 "241cab49791c9f61c4c5a20615e06db16c0a6b0aa5eedcc7a5fc912238b8fabf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.33.1/blit_0.33.1_linux_x86_64.tar.gz"
      sha256 "06e3b03b99f9a0eb64f06f13aa21dd8dd0e2925c95769f7c34d936a0655a0545"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.1/blit_0.33.1_linux_aarch64.tar.gz"
      sha256 "4fb21154869017f8c1782c419690c6af493947263dc0d92de3bcdf50b45da14b"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

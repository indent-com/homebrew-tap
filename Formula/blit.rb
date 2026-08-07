class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.45.0/blit_0.45.0_darwin_aarch64.tar.gz"
      sha256 "91fc638237326cba2a05a0cd5b591a6a810e5afc8bf45a9f6c1c5741989823f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.45.0/blit_0.45.0_linux_x86_64.tar.gz"
      sha256 "573058134bbaca92334ed8182999d99ff0fc1cc7818ec24bfd9c15e59c6ca58b"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.45.0/blit_0.45.0_linux_aarch64.tar.gz"
      sha256 "9414841c6561c292109914a669ddd79987fe56f999c512c6d68f3d7f7817e698"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

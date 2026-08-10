class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.47.0/blit_0.47.0_darwin_aarch64.tar.gz"
      sha256 "807806f7e6d87f4fd9da8d67049566fd6750c47c5b72e9cd3ad74496df45c750"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.47.0/blit_0.47.0_linux_x86_64.tar.gz"
      sha256 "6eb2b79d5c0abc9f1382e883a839db36f7647fa8d7d2199cf8005cf60cace84f"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.47.0/blit_0.47.0_linux_aarch64.tar.gz"
      sha256 "2488c86a37c3937748f6d9ece680a9c8813d0c5884bf22a79b4401bffc95e455"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

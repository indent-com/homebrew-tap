class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.38.0/blit_0.38.0_darwin_aarch64.tar.gz"
      sha256 "a9140f47d0f90602c9041110cadb23408ccfb499295a5b4ce412db28db64d8b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.38.0/blit_0.38.0_linux_x86_64.tar.gz"
      sha256 "17f9f09d9168d2b159f0ae0a1f9f1520f02c71b818996ebea5bf21098ba2fa7e"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.38.0/blit_0.38.0_linux_aarch64.tar.gz"
      sha256 "415abb7f5286be35b3dfe27216fe4107adf21761afe4a8ab188e6fc7beaea924"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.43.0/blit_0.43.0_darwin_aarch64.tar.gz"
      sha256 "f48e5d28b2ce021864186a967c4f6a689c15c6d5ef414b2014da03122b9a75d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.43.0/blit_0.43.0_linux_x86_64.tar.gz"
      sha256 "d53c5a935886f4071ec1ff1b5a1d244f9fc3c8766e6130873a42197d5e885c3c"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.43.0/blit_0.43.0_linux_aarch64.tar.gz"
      sha256 "7c6bc19a147cd3eb3781088c51c04fbf903ee26d703370e284eb7befef88289d"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

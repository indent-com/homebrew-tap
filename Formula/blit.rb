class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.30.0/blit_0.30.0_darwin_aarch64.tar.gz"
      sha256 "a6f20d6a8286640294ab2ff39fe948c6763563ffdb94517a64db6f7058f48f9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.30.0/blit_0.30.0_linux_x86_64.tar.gz"
      sha256 "112b589c8012e4a94dec5ecfeada4851a8ba60cbab91492ed8f54938f05ea04a"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.30.0/blit_0.30.0_linux_aarch64.tar.gz"
      sha256 "d4d680b74c3692b064ee8940047669e0b96e1116e583e08b4e9aaf86843910c4"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

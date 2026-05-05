class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.32.0/blit_0.32.0_darwin_aarch64.tar.gz"
      sha256 "f173f8dc8f02ffc879579dc270275bc1c923fe19d832193240f6553b1439a8df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.32.0/blit_0.32.0_linux_x86_64.tar.gz"
      sha256 "f86c36f3a2725becaf4586cf208b3dad700279db8c6e257382ccc288ea7e48a5"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.32.0/blit_0.32.0_linux_aarch64.tar.gz"
      sha256 "48fedf3d825b89a2cf4551a5ead8ad05d467000be169be8bc017622410fa1ab3"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

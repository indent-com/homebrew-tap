class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.36.0/blit_0.36.0_darwin_aarch64.tar.gz"
      sha256 "63600322915d303d5c5ba870ac396eaf0ab1640126670c7869507e097b833ee6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.36.0/blit_0.36.0_linux_x86_64.tar.gz"
      sha256 "b2d82d63247dc82272503f6077d40e294b90d0d55c482f09991ce0eb7b536754"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.36.0/blit_0.36.0_linux_aarch64.tar.gz"
      sha256 "9f65c011e059fb230a75274148191a34ba8f87cb52f7e79afcb0437067429062"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

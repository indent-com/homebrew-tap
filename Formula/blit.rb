class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.22.0/blit_0.22.0_darwin_aarch64.tar.gz"
      sha256 "9537e13e61d3f0d91b4f5abc79611b17bb0b0761862c0d78977d6c012a04ac97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.22.0/blit_0.22.0_linux_x86_64.tar.gz"
      sha256 "0e5595616c14862e2e6ae5498db65aa6f4824317513cb539d84ce3b6f5563a14"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.22.0/blit_0.22.0_linux_aarch64.tar.gz"
      sha256 "620c175d1a64bfd84310e1795fbc501383cd4adb40471f03e6dd76caf8f092b6"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

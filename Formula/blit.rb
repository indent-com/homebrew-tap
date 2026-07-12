class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.35.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.3/blit_0.35.3_darwin_aarch64.tar.gz"
      sha256 "17bbf85e62c5a4840789ad4517a346633ea8decd1c807b90529d93857dcc5cef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.35.3/blit_0.35.3_linux_x86_64.tar.gz"
      sha256 "6b9bdede431ca878ee20a2b107764cde70c49402723f794033ab1556b5dfa6d5"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.3/blit_0.35.3_linux_aarch64.tar.gz"
      sha256 "074651ce0365ef712797e6bf2af00bed4245bb8554ad35549d96e7b246217af9"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.1/blit_0.12.1_darwin_aarch64.tar.gz"
      sha256 "e99ae79b5460372d40f1f90be4c5ab7ea1475266db37b527a710d9535426d2dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.12.1/blit_0.12.1_linux_x86_64.tar.gz"
      sha256 "45f09c807eb055a775b56109b80a48369ebd1f727dbe7a3770979693c9330dba"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.1/blit_0.12.1_linux_aarch64.tar.gz"
      sha256 "4192ee45144f9f68cda24f3d8b01ec22c26bffcc9abe978cde92f4be2144f085"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

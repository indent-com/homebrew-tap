class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.37.0/blit_0.37.0_darwin_aarch64.tar.gz"
      sha256 "bb6f44976080d21afe7397b7bb408b16820a233b4919fe6f63cd61bdc541c8cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.37.0/blit_0.37.0_linux_x86_64.tar.gz"
      sha256 "29ce530762fd3fd26f4619727dda23398e1913bad9829fe82dd859dc85bfdb2d"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.37.0/blit_0.37.0_linux_aarch64.tar.gz"
      sha256 "b350a9ef702599367a15096fd82a921a4020a90bb92f2b685c1a03098ef28b25"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.40.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.40.1/blit_0.40.1_darwin_aarch64.tar.gz"
      sha256 "92752a6d39a21eccac4548c715afc281aaac478e7c8f17aba3bfacfe894f0910"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.40.1/blit_0.40.1_linux_x86_64.tar.gz"
      sha256 "6dca04fd6adbcbcc03068c94b32ff63f65e68eb895f5f791a807eef91d97ea05"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.40.1/blit_0.40.1_linux_aarch64.tar.gz"
      sha256 "ea47508f95ffabf0a5073e6d503c4c8faffce403c36608dd3f2509afe959d14d"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

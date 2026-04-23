class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.28.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.28.3/blit_0.28.3_darwin_aarch64.tar.gz"
      sha256 "71c546e66f89981e40ae42d0ddaebe4e7a340e717d8a736720916a24f586258a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.28.3/blit_0.28.3_linux_x86_64.tar.gz"
      sha256 "6739e87747a973dde004e34a737a029d671661ecdf432f4d38f3a34721938023"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.28.3/blit_0.28.3_linux_aarch64.tar.gz"
      sha256 "114436f0494ea49f696bcdd4f609003435cc741892094e218d763f7d86012b3a"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

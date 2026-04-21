class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.27.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.4/blit_0.27.4_darwin_aarch64.tar.gz"
      sha256 "944d8088df7fe59bae7d644f141bb1482cfb1a8b33274af1ecf788b471f01610"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.27.4/blit_0.27.4_linux_x86_64.tar.gz"
      sha256 "9c8c7d413beedcc9ad5a360f6c9657704988cc5cf7193313f96a119dd6144270"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.4/blit_0.27.4_linux_aarch64.tar.gz"
      sha256 "2304c4b070c2233b15e4f9618c3dd35a74ac281684666ca945d18d9c336597eb"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.55.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.55.1/blit_0.55.1_darwin_aarch64.tar.gz"
      sha256 "d292d7702e4692b45c439e944b809669fbce68a8ad9e5598285c8ec995a9dd0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.55.1/blit_0.55.1_linux_x86_64.tar.gz"
      sha256 "95964bc0d1ad61c8c1cb5755fd06f341a3365ddb985477e108ebc84e0bcacb9d"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.55.1/blit_0.55.1_linux_aarch64.tar.gz"
      sha256 "6e49a9c58a344d8018603ce3d1aea208acf4954e9086a53035cc2d3572e0eb36"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

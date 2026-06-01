class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.33.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.7/blit_0.33.7_darwin_aarch64.tar.gz"
      sha256 "89d502cb97018be5e67da205c4a28b27fc607dab7e6408caeb83103a7a4aa959"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.33.7/blit_0.33.7_linux_x86_64.tar.gz"
      sha256 "ac543e21a22108f3ac353f2d7ec43927a60c22ebdd2382298c3bc0219c4db076"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.7/blit_0.33.7_linux_aarch64.tar.gz"
      sha256 "6347e02d764dfcf1c17c07d715d40abff8b1b5eb8fdaeb804aec1177858a3d35"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

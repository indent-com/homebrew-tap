class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.29.0/blit_0.29.0_darwin_aarch64.tar.gz"
      sha256 "0750be8ced1336baa8ac697b0fa143a71503eb6e9d76950d74293ecff542aedb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.29.0/blit_0.29.0_linux_x86_64.tar.gz"
      sha256 "efcaad04b717d46a993dec27e7bc314712f2ecd7a836a87363df7701d3c7dcc7"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.29.0/blit_0.29.0_linux_aarch64.tar.gz"
      sha256 "885fc4bbe1e97be3d1461306dd89fbcb72b131f9c775579cabb20415a8706b99"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

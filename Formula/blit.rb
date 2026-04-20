class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.27.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.1/blit_0.27.1_darwin_aarch64.tar.gz"
      sha256 "424f98572266ebfb84123b564803286a33b4f42c7964e607b6a2574d9997a1ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.27.1/blit_0.27.1_linux_x86_64.tar.gz"
      sha256 "9122b010022266a659c59c2e9c7eca618f658430e1979cf6291ae0ba1963ce02"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.1/blit_0.27.1_linux_aarch64.tar.gz"
      sha256 "6a466f04d431c38e4517c2803e918f01e6509c6f81110e09d474a1acbee8e174"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

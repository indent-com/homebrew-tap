class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.52.0/blit_0.52.0_darwin_aarch64.tar.gz"
      sha256 "91d54f31aa27a8899ec911f972c73db7938c780b8025fe34a82fad4ad0607367"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.52.0/blit_0.52.0_linux_x86_64.tar.gz"
      sha256 "f2148464802dda224c769d2a229403e4bcf09032e0c6bc7f442738ade9f94be5"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.52.0/blit_0.52.0_linux_aarch64.tar.gz"
      sha256 "2c55203b97018bd8d84d31bb215d80e271ddef8c81b0bf6663ad00db65c3224e"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

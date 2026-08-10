class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.47.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.47.2/blit_0.47.2_darwin_aarch64.tar.gz"
      sha256 "30971298531e0a255bd1b23593c033e169a65cfaa804f3f3830ec3664ab162e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.47.2/blit_0.47.2_linux_x86_64.tar.gz"
      sha256 "8e0be2dc2262013205e714218be7ae14ce6283c2d16737c79a70fcca06ff915b"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.47.2/blit_0.47.2_linux_aarch64.tar.gz"
      sha256 "ddbd39ecf529517cac44d9551efb6bbdc98f68906c01fc0b4389e5049bd3e8af"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.35.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.2/blit_0.35.2_darwin_aarch64.tar.gz"
      sha256 "d861225824b3034ff2af0f75cb669911a47d29c2a1713b6e1b8e292a5759b12f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.35.2/blit_0.35.2_linux_x86_64.tar.gz"
      sha256 "e81ff2ec61eef16e1d7c0ed751b25a6e6405716faf67caaf36504456d589f160"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.35.2/blit_0.35.2_linux_aarch64.tar.gz"
      sha256 "a9ce74c3d068eef4a74e74762eedef3e4f92d39c4df3948fdb3e415c94ac8063"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

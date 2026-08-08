class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.45.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.45.3/blit_0.45.3_darwin_aarch64.tar.gz"
      sha256 "7f82caf803f90fc96c0421194f45e8555193e5709f05121190aaa24f883d7a81"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.45.3/blit_0.45.3_linux_x86_64.tar.gz"
      sha256 "c7077fa605331f57cd6f6dc8fa0cee3fa10aba48c3d28c7dc75426de12b5a502"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.45.3/blit_0.45.3_linux_aarch64.tar.gz"
      sha256 "09ac9c819247d479c882dce3b7c3cfb6c6be1e55b40fbe41f8e34234795acf63"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

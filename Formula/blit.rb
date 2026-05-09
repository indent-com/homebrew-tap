class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.33.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.3/blit_0.33.3_darwin_aarch64.tar.gz"
      sha256 "50605a23670d0d368c95d8a3baf7168c7fe87daefe5b89f7b526e457a8110f67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.33.3/blit_0.33.3_linux_x86_64.tar.gz"
      sha256 "08b92b48285e0c692a7ef2c8072df56ec069a076c3fb4ab0fd78309f5a6e2319"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.3/blit_0.33.3_linux_aarch64.tar.gz"
      sha256 "74d85ec60309ec6407eef90950b5cbe0831207f8b70fd2766373ba24ce988965"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

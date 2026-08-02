class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.41.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.4/blit_0.41.4_darwin_aarch64.tar.gz"
      sha256 "10cf9c9c417aaecc98820c05dfc720663fe52a9c1709d4b8f064d9940a12c0d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.41.4/blit_0.41.4_linux_x86_64.tar.gz"
      sha256 "469547c86078415c02614a9b7cd6f4d6de6f282e1d11331912278a1fb46fc6c5"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.41.4/blit_0.41.4_linux_aarch64.tar.gz"
      sha256 "dfaed9e91578e62ce849ad1af3155594ffdebcce210d70f4e38ee94bc54befa2"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

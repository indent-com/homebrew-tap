class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.49.0/blit_0.49.0_darwin_aarch64.tar.gz"
      sha256 "9ae254828ac772c76e9125d35796fa4b20c3afcc9f90f13e43b30d3410338050"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.49.0/blit_0.49.0_linux_x86_64.tar.gz"
      sha256 "0982f68e064caa4ac4b6a7a9039c0a3825277ea33b9271233b1d3a1791563688"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.49.0/blit_0.49.0_linux_aarch64.tar.gz"
      sha256 "17628b18a68e468c1196d8265df1d480e01bbbe3a46e35c81ca0416dad1856e0"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

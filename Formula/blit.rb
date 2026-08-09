class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.46.0/blit_0.46.0_darwin_aarch64.tar.gz"
      sha256 "953c01bce65e2f087ea074cb79e4d697f092398572060fc790218fd47238f621"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.46.0/blit_0.46.0_linux_x86_64.tar.gz"
      sha256 "2d32988e511755697bc5364eaa66f2a2328ade24bca593a589c3c0f4df19d4de"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.46.0/blit_0.46.0_linux_aarch64.tar.gz"
      sha256 "7c843640d7a2feb0b4be944a5101a1fe4dd91537b337680fe19624e1254b0424"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

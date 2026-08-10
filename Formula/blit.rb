class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.48.0/blit_0.48.0_darwin_aarch64.tar.gz"
      sha256 "effbd7c98d38fa1fca8f486f6c854f1eb5dba9e132cda95c62c496842a2fef77"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.48.0/blit_0.48.0_linux_x86_64.tar.gz"
      sha256 "ff5f75c206f7d9e69644c55da1f9343303048be66e905f283099c32e4fe6c376"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.48.0/blit_0.48.0_linux_aarch64.tar.gz"
      sha256 "acc5b075f1c69c94382645443c8369f2de3325e7907261e898950fcfd67478ef"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

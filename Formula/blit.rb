class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.27.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.3/blit_0.27.3_darwin_aarch64.tar.gz"
      sha256 "3d48de52f07d66da540040476978f6ad2328b2a10bfbd3ada70c9aa1c12fd6e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.27.3/blit_0.27.3_linux_x86_64.tar.gz"
      sha256 "8fccb47222df27eb1b1e556b2a7625ae8c83a257b7835fa561fe8af1d03e7308"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.3/blit_0.27.3_linux_aarch64.tar.gz"
      sha256 "7d5667f09c51de5cddba18f338d2a5b61a50ef2c7f3748335be0a02bbc5e1dde"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

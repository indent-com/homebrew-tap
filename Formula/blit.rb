class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.28.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.28.2/blit_0.28.2_darwin_aarch64.tar.gz"
      sha256 "95830dde2ba5599ff9d9310a983ad283ecfe1b7e9cb813823f8ee6db16c8b72f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.28.2/blit_0.28.2_linux_x86_64.tar.gz"
      sha256 "f20f76c19121a7c70f816851f04db38b8a15a174baa8f66b8bfa0764e4d7e013"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.28.2/blit_0.28.2_linux_aarch64.tar.gz"
      sha256 "5edb706fcea046c93dd0bc7c3547b133b66867acd80b12d02ac2f915739eae59"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

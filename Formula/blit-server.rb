class BlitServer < Formula
  desc "Low-latency terminal streaming server"
  homepage "https://blit.sh"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.21.0/blit-server_0.21.0_darwin_aarch64.tar.gz"
      sha256 "27dee2cb42562e42f8321ce0acbda6e088b820e772d8e66c7f8551fb7ff039d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.21.0/blit-server_0.21.0_linux_x86_64.tar.gz"
      sha256 "19a4f0a0884ca9dea8ca3524568343329dcd2b02a0204a006e91389b09a0f5ee"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.21.0/blit-server_0.21.0_linux_aarch64.tar.gz"
      sha256 "eada2f0d22fbfef5662a0b44c77ca7a0c8c0a8e50144b677b41595dc665c3cb0"
    end
  end

  def install
    bin.install "blit-server"
    (etc/"blit").mkpath
    (etc/"blit/blit-server.env").write "" unless (etc/"blit/blit-server.env").exist?
  end

  service do
    run ["/bin/sh", "-c", ". #{etc}/blit/blit-server.env 2>/dev/null; exec #{opt_bin}/blit-server"]
    keep_alive true
    log_path var/"log/blit-server.log"
    error_log_path var/"log/blit-server.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit-server --version")
  end
end

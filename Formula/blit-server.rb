class BlitServer < Formula
  desc "Low-latency terminal streaming server"
  homepage "https://blit.sh"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.1/blit-server_0.12.1_darwin_aarch64.tar.gz"
      sha256 "eb0aba7172bb9e25779019603a9e9c97f80b33960b44fb43868f30720e3fce6a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.12.1/blit-server_0.12.1_linux_x86_64.tar.gz"
      sha256 "f35dd86704a1673d1d0cd8ffec5a569a6571b27b0b31ae9e22c47a120545069e"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.1/blit-server_0.12.1_linux_aarch64.tar.gz"
      sha256 "1c52a577d5fdcaaca46c9e124deaaf021acdbc2c4df92e2e1359c61194fc7941"
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

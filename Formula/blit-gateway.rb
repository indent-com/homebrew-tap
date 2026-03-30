class BlitGateway < Formula
  desc "Low-latency terminal streaming WebSocket gateway"
  homepage "https://blit.sh"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.0/blit-gateway_0.12.0_darwin_aarch64.tar.gz"
      sha256 "6cf14a4c05f10d10fb6df2558d8859a3c3da769c3c0f5cc081385d039819c357"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.12.0/blit-gateway_0.12.0_linux_x86_64.tar.gz"
      sha256 "d929ae172ac3a87b45c392ca29c6a608ee4d80eb3defc39ce0a822ce084ad0bc"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.0/blit-gateway_0.12.0_linux_aarch64.tar.gz"
      sha256 "637c26995a2c011e83185614c66634b7cd63d3e2e565bef7b25be7bd6c78929e"
    end
  end

  def install
    bin.install "blit-gateway"
    (etc/"blit").mkpath
    (etc/"blit/blit-gateway.env").write "" unless (etc/"blit/blit-gateway.env").exist?
  end

  service do
    run ["/bin/sh", "-c", ". #{etc}/blit/blit-gateway.env 2>/dev/null; exec #{opt_bin}/blit-gateway"]
    keep_alive true
    log_path var/"log/blit-gateway.log"
    error_log_path var/"log/blit-gateway.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit-gateway --version")
  end
end

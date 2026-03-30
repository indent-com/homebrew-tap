class BlitGateway < Formula
  desc "Low-latency terminal streaming WebSocket gateway"
  homepage "https://blit.sh"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.2/blit-gateway_0.12.2_darwin_aarch64.tar.gz"
      sha256 "80a672f129b344f1f5f7f8233fdc458ae48360f1e302c75666ff20ed2b6bb78c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.12.2/blit-gateway_0.12.2_linux_x86_64.tar.gz"
      sha256 "961d297c15ca815070da6f3159f51756eebd111092e442e376be358bff9b9d82"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.2/blit-gateway_0.12.2_linux_aarch64.tar.gz"
      sha256 "b0004160445be708d25a186f39e7a54cac4a3dd3d5fdedfdeb9073a5bc493b3c"
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

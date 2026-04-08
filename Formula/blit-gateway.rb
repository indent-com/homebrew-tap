class BlitGateway < Formula
  desc "Low-latency terminal streaming WebSocket gateway"
  homepage "https://blit.sh"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.21.0/blit-gateway_0.21.0_darwin_aarch64.tar.gz"
      sha256 "08b4b2460c9191c1264e5d19d2b96185be87b39c4bf247e5403dbca9cf65ace0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.21.0/blit-gateway_0.21.0_linux_x86_64.tar.gz"
      sha256 "0c1f29ee4ad3e891eaa5c226e1a38246a8c2a523f3a22d5a215c77d4091b5489"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.21.0/blit-gateway_0.21.0_linux_aarch64.tar.gz"
      sha256 "77aaa30fd616baba607af05cef1f5f3189d762ce833574fef98ef5d0a43505f3"
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

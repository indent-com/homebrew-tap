class BlitGateway < Formula
  desc "Low-latency terminal streaming WebSocket gateway"
  homepage "https://blit.sh"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.1/blit-gateway_0.12.1_darwin_aarch64.tar.gz"
      sha256 "4e7af94e35746ec07ed21bcbb22c55bb1bac9ace6615808d1d0ec81ea30adaa8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.12.1/blit-gateway_0.12.1_linux_x86_64.tar.gz"
      sha256 "58af636de66eb1f9be2a91c9ef371beda4b04993906599cb33d79f67af273d6a"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.1/blit-gateway_0.12.1_linux_aarch64.tar.gz"
      sha256 "8870e650fc31b7c80b83031556fd66aa8a22953352f76388e6f7a78cb3bafde3"
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

class BlitServer < Formula
  desc "Low-latency terminal streaming server"
  homepage "https://blit.sh"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.0/blit-server_0.12.0_darwin_aarch64.tar.gz"
      sha256 "1f9b11f2f0ae532aca7c02a6971468c8eb0464f633eed0e3786c124ea8beec7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.12.0/blit-server_0.12.0_linux_x86_64.tar.gz"
      sha256 "6605fead3de7101a72a4ef8bf3fc393a37ed3b2843c1c85ccbff1ae96d26d499"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.0/blit-server_0.12.0_linux_aarch64.tar.gz"
      sha256 "269b351537e6edafb5186eddabf1a1f2401017ebf518428e08a81ab0a4fc9411"
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

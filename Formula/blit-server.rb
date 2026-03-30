class BlitServer < Formula
  desc "Low-latency terminal streaming server"
  homepage "https://blit.sh"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.2/blit-server_0.12.2_darwin_aarch64.tar.gz"
      sha256 "ead75e8c296bc49e9e0c8eb01e1ae733c5abb374214065d3fe57aeba186fb754"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.12.2/blit-server_0.12.2_linux_x86_64.tar.gz"
      sha256 "e34464349a2ebc1132a9f5ddd49f5cc7e635d41887c8a2d742c9a8d18038cd7c"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.12.2/blit-server_0.12.2_linux_aarch64.tar.gz"
      sha256 "dbbda4f6d40de878d4e47a6c2a0c29816e21e660e4ba1efd4db32733461f3078"
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

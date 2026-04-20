class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.27.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.2/blit_0.27.2_darwin_aarch64.tar.gz"
      sha256 "d3b59a9b0fd7f1a633b87ba6e0fc2aceaaea784d837a2f6ec2893649751906e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.27.2/blit_0.27.2_linux_x86_64.tar.gz"
      sha256 "f60dce9be73cdea1035fe404b7448ecf4dc09ce1529bcc3ab76c65f1115d9ad4"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.27.2/blit_0.27.2_linux_aarch64.tar.gz"
      sha256 "01e0ed1123b4ee249b281abcb42d288127f73f42b809767065a2d01660306409"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

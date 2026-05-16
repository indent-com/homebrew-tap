class Blit < Formula
  desc "Low-latency terminal streaming client"
  homepage "https://blit.sh"
  version "0.33.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.5/blit_0.33.5_darwin_aarch64.tar.gz"
      sha256 "e405a1e29e6675e7045d10d1138a64138b6b1f7b8f94d06a7e4b351358832b90"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/indent-com/blit/releases/download/v0.33.5/blit_0.33.5_linux_x86_64.tar.gz"
      sha256 "da7fc4671f35f151a9d1f4d346aeb48af87ffc62025ccb2b80d6d232c5288fe8"
    end
    on_arm do
      url "https://github.com/indent-com/blit/releases/download/v0.33.5/blit_0.33.5_linux_aarch64.tar.gz"
      sha256 "3c0f73932e31014c4318fc2528d9127f1233f96a4d297a607271223cf08a7012"
    end
  end

  def install
    bin.install "blit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blit --version")
  end
end

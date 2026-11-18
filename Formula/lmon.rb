class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.39.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.39.0/lmon_darwin_amd64.tar.gz"
      sha256 "01587219ad74d37be00e94226fdd93b485bd489577834360e14466d83a6980b0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.39.0/lmon_darwin_arm64.tar.gz"
      sha256 "ed474164ca31aa7fffb16bf09b23cf169477c8eb67e490d02ebe5f5bd2c5fc6b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.39.0/lmon_linux_amd64.tar.gz"
      sha256 "771e60e78eb424923c532330fca4cd6bf16e8aa10571dfb9e801ba5d0296c7c2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.39.0/lmon_linux_arm64.tar.gz"
      sha256 "fd788286699be9a595be0fd593c0d3149633e9f015d3672f402b8208bf2b105a"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

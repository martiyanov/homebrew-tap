class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.26.0/lmon_darwin_amd64.tar.gz"
      sha256 "85e148818a1c30429cc86665e9dae31bdea26cec66f4cd04ba7e4f9b7ca05822"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.26.0/lmon_darwin_arm64.tar.gz"
      sha256 "2b79c9dc6efaed1ecdd8f33c13f841fb3ace2ce8145d4e2cd54f11f7f364b542"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.26.0/lmon_linux_amd64.tar.gz"
      sha256 "479d43718cb443bb9ffd13bb2162375e742e48aba787d8271e8d1178ae6fffb5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.26.0/lmon_linux_arm64.tar.gz"
      sha256 "5543dda17af6642f4386ceef6b2b29eac6f10161178d8cbfa5034853a8b53664"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

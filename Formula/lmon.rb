class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.29.0/lmon_darwin_amd64.tar.gz"
      sha256 "a93c41da383383fe8dc0013c13d305958567e11139899f23bd0c5d3b8c7ccfea"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.29.0/lmon_darwin_arm64.tar.gz"
      sha256 "1e0607a3fa0f726411e190732f65631fb7313cbd6d5ce89e9562106325870f48"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.29.0/lmon_linux_amd64.tar.gz"
      sha256 "db93c0a8da3b56c95465863175e1e39e696c42af1c0003d942fbbd9e7c4cf24d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.29.0/lmon_linux_arm64.tar.gz"
      sha256 "db06616cf049dee4d9fe01e11f190d61b6e4fb12db3b520eeef1b5790390b158"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

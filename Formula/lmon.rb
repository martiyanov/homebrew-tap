class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.37.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.37.0/lmon_darwin_amd64.tar.gz"
      sha256 "c4999ab351c8b70b7eb22dffac82133157563ccf0dba7d640b62e75b4b78e966"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.37.0/lmon_darwin_arm64.tar.gz"
      sha256 "97eb6209baec7709ebf18b19a7b664da5cbd3d0a147d9c5a65bc769855eaa81a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.37.0/lmon_linux_amd64.tar.gz"
      sha256 "2165964ee31c05e6651a64391b0d97d3e167221d012564f04d3389b3177495fa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.37.0/lmon_linux_arm64.tar.gz"
      sha256 "da847406f7e15b9be0fd18d74863c27c1912ac64288cc0d9d6fb5b1b976c6a66"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

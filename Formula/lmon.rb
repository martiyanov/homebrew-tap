class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.41.0/lmon_darwin_amd64.tar.gz"
      sha256 "932a2413dc6a5218f822f0b40274d88ca7ed4b238cb4ffe4115a9b4c77372750"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.41.0/lmon_darwin_arm64.tar.gz"
      sha256 "ec00fb75007222669ef63af783daac05d745b99b08a0f5bca2ba418cc7088da3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.41.0/lmon_linux_amd64.tar.gz"
      sha256 "5d9beb624cb11a117a37f22c7d2a44a247d0f9fedf7a720e17a53e344044af9b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.41.0/lmon_linux_arm64.tar.gz"
      sha256 "78cf4e5eba48e9b4788f31561655e24fc487b39af206be85c3c43b66f01f0cf9"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

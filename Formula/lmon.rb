class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.0/lmon_darwin_amd64.tar.gz"
      sha256 "d94e3c6414fdfc301d3f44b9c626ee90fcded99bd8f41281fbc3844f88de72db"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.0/lmon_darwin_arm64.tar.gz"
      sha256 "2066e64350c8be43d1df5c4ba528d65de93efc31a9e1d24ddb2685b97aa83fc1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.0/lmon_linux_amd64.tar.gz"
      sha256 "9b509fe8c37955929ee773fcb040c79534d41bc4fe2c8bfa7fff9bfcc2cd1591"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.0/lmon_linux_arm64.tar.gz"
      sha256 "bd83a1668aed3e3de62c0850b7e7eba293f3bc2397b3cfef206a12a2768813a3"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

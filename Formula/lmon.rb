class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.53.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.5/lmon_darwin_amd64.tar.gz"
      sha256 "83f404ac09aa696264abf1b0ef9bc648b7a9e135c48cbfa6ca5b9c919f05ab06"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.5/lmon_darwin_arm64.tar.gz"
      sha256 "3dafc3b9242ee3f40fe36d210e0dcc58cab2aa8d7ee2047462117e85f966ca33"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.5/lmon_linux_amd64.tar.gz"
      sha256 "776d7855b035fcf773a16503eebe45943e743462dac8ff6758606f82e0b1ca1e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.5/lmon_linux_arm64.tar.gz"
      sha256 "c24893b1661b3bc2798a221805cc701c0c91662ed30b02889db26762765f0c97"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

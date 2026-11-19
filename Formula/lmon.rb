class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.45.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.45.0/lmon_darwin_amd64.tar.gz"
      sha256 "f6c2fc84993ba6c2b0148495bab980d985355bc0ab875eb81a1d21fba9ed28b8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.45.0/lmon_darwin_arm64.tar.gz"
      sha256 "56015e9f29449587291f41995eb607db80862e7f11dc638b638b647aca4c07de"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.45.0/lmon_linux_amd64.tar.gz"
      sha256 "5a6c9bf7752272c652eabae25e854abd58de6279be9806e1b4947785582e223d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.45.0/lmon_linux_arm64.tar.gz"
      sha256 "5559ac548567faa76980d55c6e4ffc5d93e372be9aa0641a8dfc1d0307797afd"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.15.0/lmon_darwin_amd64.tar.gz"
      sha256 "a611fa42ab7383ee903c8104579403130da1937749d7ff6bc9347fc545981473"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.15.0/lmon_darwin_arm64.tar.gz"
      sha256 "52159c3e48165049271007777a935c9d9b340a3c7627abada9402c34ab7f4977"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.15.0/lmon_linux_amd64.tar.gz"
      sha256 "450bd6063e07813e56777dac43340bf4ad8094e93c0748537a5fe083445b1f30"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.15.0/lmon_linux_arm64.tar.gz"
      sha256 "af138d2649cb5d1f2a3eae7ce52f58a69000d2c068b01a1ab7a7ad8627a4ba32"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

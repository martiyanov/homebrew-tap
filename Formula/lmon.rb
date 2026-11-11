class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.11.0/lmon_darwin_amd64.tar.gz"
      sha256 "b66ad62653ec986a374392d174cbf81953ff7b814d311e8865ee6d4599a77534"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.11.0/lmon_darwin_arm64.tar.gz"
      sha256 "db2ba03c9c066bbb0210dedffd62b1c2252fd08e883deca386f30d578b316fd7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.11.0/lmon_linux_amd64.tar.gz"
      sha256 "bd5a5dc0d6d6b79a21548abf15d0bbf83a0802ad90a709226e994240842e8133"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.11.0/lmon_linux_arm64.tar.gz"
      sha256 "f0095c8075ccdede6da378988f1af09f4243f35d31c4bd21347e6f012fe3e27b"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

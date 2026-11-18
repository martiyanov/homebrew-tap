class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.18.0/lmon_darwin_amd64.tar.gz"
      sha256 "8aeabd25cbcb02ef22c88b69f36bd04077348dab350b440104d0f399fa182922"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.18.0/lmon_darwin_arm64.tar.gz"
      sha256 "82942acf7ea90e61aa615756983e73aeda52e211b67d9456a0af28e4399f5d23"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.18.0/lmon_linux_amd64.tar.gz"
      sha256 "595d8b91ddaa451478070c9b98734f3707d32b7e57242cf0b083e41be6b3bc88"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.18.0/lmon_linux_arm64.tar.gz"
      sha256 "5fd1bd7f99155e4e4aafa9d815ee7281fb9fdf31f1f0028656454bddea413c27"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

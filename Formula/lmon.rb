class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.40.0/lmon_darwin_amd64.tar.gz"
      sha256 "cbfa7ee21d23b364755bdf976bb6fd49a33580bfa074597f708bdcb9b627c19c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.40.0/lmon_darwin_arm64.tar.gz"
      sha256 "9074675ae6fc527e773be5b1edf650d1997561b9e19496746e06b879f3484162"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.40.0/lmon_linux_amd64.tar.gz"
      sha256 "4587e36b5df74819dbf76a963164666f03d7cb0885818d1791e129138e4c917e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.40.0/lmon_linux_arm64.tar.gz"
      sha256 "6c2e1ad3e3a51f3e83c8b30d213e7494f626f5edfb7806fcd3de608281264355"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

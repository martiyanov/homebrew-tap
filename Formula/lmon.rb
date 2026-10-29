class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.5.0/lmon_darwin_amd64.tar.gz"
      sha256 "f1d6a4daabc211e631e7d0d809db4cb210a0c021a8ae902e8c7f303ef91de670"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.5.0/lmon_darwin_arm64.tar.gz"
      sha256 "a138fa55dd3fe97a607b95091f792319f9d624c037f1879951233d0f5e4531a9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.5.0/lmon_linux_amd64.tar.gz"
      sha256 "9eb5f6ddaf9dd68a04accc88ced760282c77990589144bdeae9a5723aba3db6c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.5.0/lmon_linux_arm64.tar.gz"
      sha256 "22602720f22363893ed0ae87bd606c970a80c31b5817e6f2d74b41fd33c6c895"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

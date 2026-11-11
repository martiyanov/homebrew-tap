class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.2/lmon_darwin_amd64.tar.gz"
      sha256 "7ded3b7ef1ba62159b3e1492bc31c2c324174c628d86dd27db60d8ea13e71ec0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.2/lmon_darwin_arm64.tar.gz"
      sha256 "958c997c934ca7469ea5a8fe5dbb5afd43eb552d708b3190d611ebe3ce95f29b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.2/lmon_linux_amd64.tar.gz"
      sha256 "d7fd53f08ff5c00897cc97864d58954db5713495fdc6cd4643cf508285baf13d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.2/lmon_linux_arm64.tar.gz"
      sha256 "e607891b9f038575de8f2cfadd9415ce2cbe72aba5f35e0c01d6a9e09b5448a5"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

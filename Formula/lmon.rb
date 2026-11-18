class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.42.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.42.0/lmon_darwin_amd64.tar.gz"
      sha256 "036210b8b6c160bbddcf523b6bc6b875c90b7355f3891916907b424b584933af"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.42.0/lmon_darwin_arm64.tar.gz"
      sha256 "a520bdaebaf50bde1aa0adacc938efcafe7c6880aefc281bd51ddd434254bb0b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.42.0/lmon_linux_amd64.tar.gz"
      sha256 "796a12ec0153cd29d4d0c8672fca38e45c77a37ccbbd588f8898d6b6b690a897"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.42.0/lmon_linux_arm64.tar.gz"
      sha256 "b1b07ad6a280a420e88377f717e45782ee9a6a092dcb902e86536976af1f248a"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

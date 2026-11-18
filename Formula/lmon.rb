class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.24.0/lmon_darwin_amd64.tar.gz"
      sha256 "a541cfae2f57383ec9c60954eb744e383174f8cffd162987496695068219031d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.24.0/lmon_darwin_arm64.tar.gz"
      sha256 "a13c6fddd7eae314a3c626ada82e095fea90f9539236089d83a204bc9f53f234"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.24.0/lmon_linux_amd64.tar.gz"
      sha256 "e46ab0dbf9fde2b8b2f9f523c0998c72de1304c15c3871d1b54c0929342d29c2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.24.0/lmon_linux_arm64.tar.gz"
      sha256 "c8b3ff42627bf9be91a53fc032a2b1e64368833cdb16ea10ba7d0155be826e5e"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

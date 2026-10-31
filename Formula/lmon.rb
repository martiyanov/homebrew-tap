class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.8.1/lmon_darwin_amd64.tar.gz"
      sha256 "577892e1d120c845bf1c2c0bf850281cac072a9bebe3d4b7089e0c5fdc3e25d6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.8.1/lmon_darwin_arm64.tar.gz"
      sha256 "805d47cc8c2b0f4648b6003833cab856f2d25289782d213ef693b5e8dcf8f455"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.8.1/lmon_linux_amd64.tar.gz"
      sha256 "ee84323d8d65c4922be66cc2c286b3574966b0b4dc7071ee5c582f1b445343a2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.8.1/lmon_linux_arm64.tar.gz"
      sha256 "5bc0d380f72d5c6a8ae55f3d434e553900d3fdd741b8f00ce415cc9e92a3fdcc"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

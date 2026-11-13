class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.14.0/lmon_darwin_amd64.tar.gz"
      sha256 "4d5fe0a3481b3ba855330bd686b092b83609759199bce2b28bc17b06e4be2c62"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.14.0/lmon_darwin_arm64.tar.gz"
      sha256 "8c0663bff95f3635019ef7c22e398fcd791c078f41da856d3e0258c0cdd9b4eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.14.0/lmon_linux_amd64.tar.gz"
      sha256 "54bce2ef2fa38889a47316716f0408f6a401d2e4c102ae5d8537fe7b4087cf8c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.14.0/lmon_linux_arm64.tar.gz"
      sha256 "7764f3a0ce8cfbc3ba105784096dbcfa66a435982d65c46e1dc165800c6bf57a"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

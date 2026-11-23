class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.53.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.6/lmon_darwin_amd64.tar.gz"
      sha256 "425eb7d21e183fa17b71236022981a3639c4b974e5a87c925e0929fddd9802c4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.6/lmon_darwin_arm64.tar.gz"
      sha256 "ae2db0c2405bedcf54675e90c9140416dbcef65fede8381f4cade62fc95ecca0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.6/lmon_linux_amd64.tar.gz"
      sha256 "30d294eed6871ce9afc62b9c9102db5f401ace7b183dc8305c7d49dfcaa8f8bb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.6/lmon_linux_arm64.tar.gz"
      sha256 "00611861a98b2cec82d398e2e2b414c6246cbdef23acc0eeda66c3118e52912f"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.27.0/lmon_darwin_amd64.tar.gz"
      sha256 "405c3890365596efe89db605010090a1930d2422c1c663880a0723e66747173f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.27.0/lmon_darwin_arm64.tar.gz"
      sha256 "c5e525ba8c5388d47a29c3ad8e791001755b25660a1bd94fa1edb1cf346b74ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.27.0/lmon_linux_amd64.tar.gz"
      sha256 "7d59b8881270cf2f55849ace65d59e18068e5f1a3a8fee78c23172766ca67640"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.27.0/lmon_linux_arm64.tar.gz"
      sha256 "ee096960656694aa5e57546fba45ccb3a249d38e747bb4912a9e1d5e0afec7ce"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

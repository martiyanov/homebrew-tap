class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.28.0/lmon_darwin_amd64.tar.gz"
      sha256 "2511bcefbe540a65f15bdac3c1f5ccb26c348e3b2011df76b8eb35284e6a8989"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.28.0/lmon_darwin_arm64.tar.gz"
      sha256 "b39746e2cca24cc4a3e1ea99fff6307789241b229c966d828f71e1e03f242388"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.28.0/lmon_linux_amd64.tar.gz"
      sha256 "935240161ecffd6541d6e6764be3cea6f6aca4ab9b9c6aeb5cfe0aec0e371d7f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.28.0/lmon_linux_arm64.tar.gz"
      sha256 "1bb9ec48dd27787511fe47abc919a1063c69d64af25d28c0a2a2e849a6b11fb3"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

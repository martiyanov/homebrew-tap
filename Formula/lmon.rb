class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.32.0/lmon_darwin_amd64.tar.gz"
      sha256 "82f43cdfb60f6d6f1bd0dfb185836ff8ea8ea945b069e23cc855864611fac4a6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.32.0/lmon_darwin_arm64.tar.gz"
      sha256 "3d44094386d39bdbff558ff83d2f91d5d92c5f743e01ecef9606fd2331a9100d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.32.0/lmon_linux_amd64.tar.gz"
      sha256 "cddf22270e0fe1af08d7d6721aecf32452ac6b460acacc66d5f9190371ca4454"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.32.0/lmon_linux_arm64.tar.gz"
      sha256 "b9eb89bc7e0a299b7553736eb679835bfb476d574e1df0fe42fe34e76ccade4f"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

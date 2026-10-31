class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.6.0/lmon_darwin_amd64.tar.gz"
      sha256 "56cebd339e9ce7562561f5eee55c1ff21d22f7d93ccfafda9bffaa3ba6a4c15b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.6.0/lmon_darwin_arm64.tar.gz"
      sha256 "66f92e0a8dd805edfd980bae372543fd806a733b04bb5ed51b902a74bd1c9bfe"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.6.0/lmon_linux_amd64.tar.gz"
      sha256 "fabf5a3c8798049868876c3d513a60725f1e21d9a60e9c0fc9e60b80702f2a19"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.6.0/lmon_linux_arm64.tar.gz"
      sha256 "210f3cd85afaa8ea8fa97662e12a566b566cd2255560f28af9e69a60c39811a8"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.8.0/lmon_darwin_amd64.tar.gz"
      sha256 "6f94f1a877272ed2ac87994e75aefb6c2a8ac1132da400672069ec1c9d51a4c1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.8.0/lmon_darwin_arm64.tar.gz"
      sha256 "5deae8ec170401ecd38e70205dfbb494fc4c553921acdc07524387e155ae0bbb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.8.0/lmon_linux_amd64.tar.gz"
      sha256 "8b303016da6c53a642ace13999bf9928f4a0f66eb832c3e480ebcf2b13503557"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.8.0/lmon_linux_arm64.tar.gz"
      sha256 "fcd54dce7e93daffac819bc0cf448284fde6e379d3eb6700bd730eb9221be1a3"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

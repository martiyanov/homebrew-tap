class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.22.0/lmon_darwin_amd64.tar.gz"
      sha256 "2ea35d175d45361b9ce984ff1d7c74984928ebac31698089356d77c9b4e98682"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.22.0/lmon_darwin_arm64.tar.gz"
      sha256 "8928a86999e4a36c062547281853943f1b4cb568416634ec05409d9e285ffebd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.22.0/lmon_linux_amd64.tar.gz"
      sha256 "bdabee46ff8ef9b8d6825c7724e8623977497532164befe080097c73735e99a1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.22.0/lmon_linux_arm64.tar.gz"
      sha256 "5b954408f689c6795295ccbe197a93ffb1b8eeaa61ea0361360137878fdff983"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

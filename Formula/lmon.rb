class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.43.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.43.0/lmon_darwin_amd64.tar.gz"
      sha256 "2ee3849b3a071275a0d8579e17835de17daf5a90eef2a3798c5af9a7f9671a85"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.43.0/lmon_darwin_arm64.tar.gz"
      sha256 "75b1fd9f7dea69f019f476ecbaf0a4fd0895deb6e942095a668d6a06d2807691"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.43.0/lmon_linux_amd64.tar.gz"
      sha256 "4d297076f3f46b3a45c1964b46bb6b8128c2be56084baed3aebc31f0dee68573"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.43.0/lmon_linux_arm64.tar.gz"
      sha256 "ce838f3d414d2e0bdac2641ff0a9ae4a952f72dead2302b2f03f468255d0cfea"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

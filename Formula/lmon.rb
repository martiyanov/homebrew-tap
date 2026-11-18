class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.38.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.38.0/lmon_darwin_amd64.tar.gz"
      sha256 "d08b1994499c09920ec4534b833bf30ebd414f74f344273f40db943492b5502b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.38.0/lmon_darwin_arm64.tar.gz"
      sha256 "a4a53f691558c0215551942775aec23259480ec8c5befd82839b35b412a04c33"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.38.0/lmon_linux_amd64.tar.gz"
      sha256 "ebac37f15a5f9531ff362310da989af1b93686692fbbf28917b843e95f526be5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.38.0/lmon_linux_arm64.tar.gz"
      sha256 "582117e65c36c8fdb3f55bc1a6715ab9819a92d63528a553c8c1afc5067fc4b9"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

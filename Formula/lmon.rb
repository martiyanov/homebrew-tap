class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.31.0/lmon_darwin_amd64.tar.gz"
      sha256 "7a0a7f691f789c64ef021910634618eefc40f15ff216d7f016733a96199a8423"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.31.0/lmon_darwin_arm64.tar.gz"
      sha256 "0a4d8992bfde03252ea6971698d9a756100e9376aad6db4ca84642d71c4f0d7e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.31.0/lmon_linux_amd64.tar.gz"
      sha256 "f158f74a2e727d59cccf68ddd29a918e07bda89b4c3958e74b272e2ed1847f6a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.31.0/lmon_linux_arm64.tar.gz"
      sha256 "52709136a0ab4cab8c9f9396fdbbcc33674fb6d61d54c165f031d623ee44ba93"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

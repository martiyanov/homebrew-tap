class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.2.0/lmon_darwin_amd64.tar.gz"
      sha256 "741f9ad05998d761e7aaa4778a03a8d836a24ade24169e2690afad724c47324c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.2.0/lmon_darwin_arm64.tar.gz"
      sha256 "3a82227778a4221a1f285d9e45f426bf68f36a4ae6e9c80ad61d7062418bbf66"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.2.0/lmon_linux_amd64.tar.gz"
      sha256 "912b699d901b918ed54e3433bfb9976ac61c1a202a9da20cc2496cde934e0372"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.2.0/lmon_linux_arm64.tar.gz"
      sha256 "02c856b1138d5d8496f23b3b963ee0bf53598c7efca0161a36e2bf62b11a3a58"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.54.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.54.0/lmon_darwin_amd64.tar.gz"
      sha256 "a6f426d44d48f99a9c4ab106da25c35205a4ea0ec7f721d25d660641d6a7ba32"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.54.0/lmon_darwin_arm64.tar.gz"
      sha256 "0eae6b7b2249806b00953329f285141f6b04771e3c6e127da5238f504df6924b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.54.0/lmon_linux_amd64.tar.gz"
      sha256 "f57b5623e3dc6d685063580af476fb354627af5d6cff142ffb1b5532221406fb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.54.0/lmon_linux_arm64.tar.gz"
      sha256 "c9232faa3f14b4eff29407328c81918cc5d15259581fa8b603c0772871962bae"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

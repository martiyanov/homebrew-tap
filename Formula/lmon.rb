class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.5.1/lmon_darwin_amd64.tar.gz"
      sha256 "897b03c59d1b0cc55cff62affe49ef9889cc4b98d444812695067fc3f93aaf04"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.5.1/lmon_darwin_arm64.tar.gz"
      sha256 "7c15a92ce49c9e1450b35b824f61486645a41f551899c8361aaa55748f4a2394"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.5.1/lmon_linux_amd64.tar.gz"
      sha256 "baecd099365e99da1190e19bbb4363e9c89e29a0af578b4cdd70cf35b3a5624e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.5.1/lmon_linux_arm64.tar.gz"
      sha256 "6456df857ad24e574624abc71374ae1800621fc24a83eeba684051d5619adc9f"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.1/lmon_darwin_amd64.tar.gz"
      sha256 "c11db88302f1e3b22bcfe3823e913e1f87800d9069b2e39854c67d182e50b1c8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.1/lmon_darwin_arm64.tar.gz"
      sha256 "ec96db5bad7671999d20e04ac07d044c1ba92c1e754500c7306dcf65b286ba6c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.1/lmon_linux_amd64.tar.gz"
      sha256 "0425eb941dfe9ab345ff8f38b6aee6bf994f26ee7a783b8289e28f76dedc6456"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.1/lmon_linux_arm64.tar.gz"
      sha256 "140afef5a87fd702e87c579a370cdf49f21aaacd0c053cffa2dc02dbdf63931e"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

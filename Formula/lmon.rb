class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.48.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.48.0/lmon_darwin_amd64.tar.gz"
      sha256 "bd8bebbae06cb619b9c306c75d692be563d9d650e438263a97e93d376e946cf2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.48.0/lmon_darwin_arm64.tar.gz"
      sha256 "d1c32abd0d40db81a37cafc4c54530e571abe9c0bd7cbef73a3d71c7b5d4602b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.48.0/lmon_linux_amd64.tar.gz"
      sha256 "f6981b77c533cb19114223a72a957a68c9ab05e646b3655f83096fa0f7fa0f4f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.48.0/lmon_linux_arm64.tar.gz"
      sha256 "079046591511b34c2e7dfe516b4cfd9eb1d9e84c68997c4b407aa5847e087777"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

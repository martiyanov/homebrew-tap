class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.3/lmon_darwin_amd64.tar.gz"
      sha256 "afb14d9b59e356a32f72cf231179823217fe9c2f2c80e8c04e7ea969021daa4f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.3/lmon_darwin_arm64.tar.gz"
      sha256 "43fd8c98165a641b379fa737cf1a8f4f3de1d0da9dd265b1da5bb99478db90d4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.3/lmon_linux_amd64.tar.gz"
      sha256 "79eda66f590151bec175222d328c3c1597e4242c8b0ad3dce0f187ce5178266b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.3/lmon_linux_arm64.tar.gz"
      sha256 "243b43543aac65bfb273912334e719b99e2d0a468d716692162f8ef538498670"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

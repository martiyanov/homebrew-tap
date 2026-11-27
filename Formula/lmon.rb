class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.56.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.2/lmon_darwin_amd64.tar.gz"
      sha256 "f122909b7aa5a8b3e0fe4bfa14503e49a6dc6b242c1cc31348d125f4324833e6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.2/lmon_darwin_arm64.tar.gz"
      sha256 "deb69c0eead9c9097baa5c7c0469e537123e7c71906828b4da12a56a1f85eda6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.2/lmon_linux_amd64.tar.gz"
      sha256 "6f81a10af5dd06400ac6194331e746f0f73e7bad38632dad2c1a0c164cc9183d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.2/lmon_linux_arm64.tar.gz"
      sha256 "569fd49b865f2db69d7db6ad37b3048b384bc5a9cd33954ef800540b6485dbb9"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

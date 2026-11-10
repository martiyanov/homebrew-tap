class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.9.0/lmon_darwin_amd64.tar.gz"
      sha256 "75a1f04a04c896b8c3e3bbe4eb6944358ab87399c53d7f468da984d53ee14c51"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.9.0/lmon_darwin_arm64.tar.gz"
      sha256 "dadcb19a961d20f6f74fb828050bfe7c9684b52d688bb3d8e648c63a4ee55b17"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.9.0/lmon_linux_amd64.tar.gz"
      sha256 "42b5e3d1ef88fe2e30d5f0016bb2744c24ef9963f32bdb323f1b012482313176"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.9.0/lmon_linux_arm64.tar.gz"
      sha256 "d9a2f7fb3878b9497d01d7eb48108eebe263f79979cd294735a72dfcfedbac8c"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

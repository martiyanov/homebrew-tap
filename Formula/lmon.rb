class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.19.0/lmon_darwin_amd64.tar.gz"
      sha256 "0527ee1f2f3889f6c33ab88cc334d461829873bc5e1f37efcc8d16fb1dc04a88"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.19.0/lmon_darwin_arm64.tar.gz"
      sha256 "a24852f5e5d594bde45dcfb015f06650312995d4046f108b06809073af9c4bc1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.19.0/lmon_linux_amd64.tar.gz"
      sha256 "b58bd9f606bd05c6c822500c0fa82c33299448d86e36605d80a591cdd6efa70b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.19.0/lmon_linux_arm64.tar.gz"
      sha256 "fa0be5c04e2c88fdfbe4cf7fef5dbb6dc5e56373953075b7bfb4274f77417a69"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

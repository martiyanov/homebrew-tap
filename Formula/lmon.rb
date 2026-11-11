class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.12.0/lmon_darwin_amd64.tar.gz"
      sha256 "686fe1b3713a5e9bd665927b8efbad386aedde993d2705c728378479c38fdd7f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.12.0/lmon_darwin_arm64.tar.gz"
      sha256 "86c721531efae71fcd3d67a47dae141b27eb22e6cb98798b57ad1e608d447bd2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.12.0/lmon_linux_amd64.tar.gz"
      sha256 "a59588385d7b337c1aad12b0e6d734e3e0bf496ee9ee6024752a6c1ba6c6c831"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.12.0/lmon_linux_arm64.tar.gz"
      sha256 "c673059a7bf0494197b397f71759aea5f6316e6008dac08bb21644eb97e5d0a3"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

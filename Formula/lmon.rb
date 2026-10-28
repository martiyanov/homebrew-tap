class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.1/lmon_darwin_amd64.tar.gz"
      sha256 "271ab7042815115906e538e3e354b18ccc0f43ec7735bdfeb5b31c2c8191c1ce"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.1/lmon_darwin_arm64.tar.gz"
      sha256 "987b0cdb05e43bebbe8285658c197a00e89eef55974a4eec50b44a4b5fb9663a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.1/lmon_linux_amd64.tar.gz"
      sha256 "3ff36be0773e5d1840155445d6aeb00f9ad57bb3449d65241e897a3356c7e0b7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.1/lmon_linux_arm64.tar.gz"
      sha256 "8252a1173e651616201e42b875220ec0bf1ff090d8d43570adc2c3f959254b00"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

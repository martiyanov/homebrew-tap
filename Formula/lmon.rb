class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.25.0/lmon_darwin_amd64.tar.gz"
      sha256 "f0670f68bc478fde0d04916a92d19d54516724797ee398226f707492625eb08a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.25.0/lmon_darwin_arm64.tar.gz"
      sha256 "3a5cefc36d4069a5c9e47a4726b87829a63d9f377f6f70a2c0f8b40b6f87be36"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.25.0/lmon_linux_amd64.tar.gz"
      sha256 "e553f2c958ae76527ffab13e0bf7b614a909d42113571cc8d2d88b0307ae1497"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.25.0/lmon_linux_arm64.tar.gz"
      sha256 "f0f313736e57f8236a1fa91197ccbb0fab66d529ff3b5848950e67c49261c661"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

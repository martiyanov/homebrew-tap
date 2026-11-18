class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.36.0/lmon_darwin_amd64.tar.gz"
      sha256 "d668bc6bf5a46b3c56b9e6d1d4fc7a9ad9605bae50defe14ee19a9e3dd5238fa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.36.0/lmon_darwin_arm64.tar.gz"
      sha256 "e0c69de65524705be97d148f8590b2e76ca5d89b309adc924138c35f7a34c4ea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.36.0/lmon_linux_amd64.tar.gz"
      sha256 "2687308ec01320eef956e265dcc8956043bb4064f10013c29c89247867fb0387"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.36.0/lmon_linux_arm64.tar.gz"
      sha256 "fac6de3f945f7a4acecb81ef6a2d4e2f41d975cee440d0cd8a13c6260935a82a"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

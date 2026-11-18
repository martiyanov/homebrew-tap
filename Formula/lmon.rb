class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.21.0/lmon_darwin_amd64.tar.gz"
      sha256 "2fdb9040b3e4b24453ec71e57e86a5f8f6ed019f20db49635ee9bc7906f8f215"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.21.0/lmon_darwin_arm64.tar.gz"
      sha256 "4086a59ed9aa2e296a77b39d194edc1d695f7c2c8d5d27fd47325aef3e283796"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.21.0/lmon_linux_amd64.tar.gz"
      sha256 "a820ee1c69591fafe3596c50a39181e99f9628d39acd9b79efac866e60f0294e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.21.0/lmon_linux_arm64.tar.gz"
      sha256 "aaa3559834b80c4f069a17db63d0eca56fd108224dceb240d35917955fcfe547"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

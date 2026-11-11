class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.1/lmon_darwin_amd64.tar.gz"
      sha256 "e5a807b149f00a6d8fbc935aca69be8647cecb35369e6102c79e9cd5fa9dbed2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.1/lmon_darwin_arm64.tar.gz"
      sha256 "e5cf4587a64c30256b7284c06345d4e739801d06cce0dd1ea053a0aacab90cac"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.1/lmon_linux_amd64.tar.gz"
      sha256 "28ef16f0150f5a68ecdd547c743af0195e17a827e51956d79449ad31834c95a3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.10.1/lmon_linux_arm64.tar.gz"
      sha256 "3bec357e3c33dcf42a0d96130aac9c36802106b1341bdceeb043385568654c16"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

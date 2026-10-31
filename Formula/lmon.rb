class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.2/lmon_darwin_amd64.tar.gz"
      sha256 "73bfc2b1594fdcb0c3481c7bd4a06c50c1cc84bb8b1eeea4d62365025a0038a0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.2/lmon_darwin_arm64.tar.gz"
      sha256 "66be8d6160c02443ce2f3feebc105db56071d14853c6231144c808bdd152bf51"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.2/lmon_linux_amd64.tar.gz"
      sha256 "96de38c5199bdd7b17f3bcd621c24cb50cd95c871445e2ff80cae37f0ee7f0b3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.2/lmon_linux_arm64.tar.gz"
      sha256 "90fa9ec1731b47153dede906d90bd697be69dbf2e64b747e250159d019c89630"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

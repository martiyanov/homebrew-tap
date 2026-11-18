class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.20.0/lmon_darwin_amd64.tar.gz"
      sha256 "b6ebdfeb95c66f69ae1aa6b37e6fa52b2c264a264a7bf70e3e6778d16bc6a530"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.20.0/lmon_darwin_arm64.tar.gz"
      sha256 "3d7e08a56861d3c9c4214ad9ae4248a61ec8f9f2399bdb22497d3f23e6b0e69b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.20.0/lmon_linux_amd64.tar.gz"
      sha256 "18cb284d8fdf4d7e48363832b4a195e1a25c380b586bff024d5f1f8257695d37"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.20.0/lmon_linux_arm64.tar.gz"
      sha256 "cd4fe1f19e055a8b06ba041ec4ffa0a87b602176cffa476e34399a0d8a66e2e6"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

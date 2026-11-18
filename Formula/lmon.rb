class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.35.0/lmon_darwin_amd64.tar.gz"
      sha256 "750c4212fd75eac70e23c90fa82bfdf1c49c8eb2b82733a35e9277f3eb8f8c18"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.35.0/lmon_darwin_arm64.tar.gz"
      sha256 "b49e5086721e140d1326a7d47c8802e75b9945bfdd6de5232de7e3be9b6ef92b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.35.0/lmon_linux_amd64.tar.gz"
      sha256 "a643e60e20bcc2c607445514f89a9206e5fb2f98fcec1ffaf42b56e9403eb3a7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.35.0/lmon_linux_arm64.tar.gz"
      sha256 "292880c69eb42f197fbbeaaa430d0a3d441d19d43d623e324d6d703176fb55a5"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

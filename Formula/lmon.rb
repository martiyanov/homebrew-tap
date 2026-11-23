class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.53.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.8/lmon_darwin_amd64.tar.gz"
      sha256 "de7a825d4b059f65c95fc840c608453dc826df1faecbaec0acdee3bc18e9e288"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.8/lmon_darwin_arm64.tar.gz"
      sha256 "2b3142873f4f9d98a63e4ead74f16000bb054cd7119f6e09459e1d9842c86cf0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.8/lmon_linux_amd64.tar.gz"
      sha256 "b0871a92b9e9af805d4b5cc72e15a9b15122d83d4643265375399ade243f2255"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.8/lmon_linux_arm64.tar.gz"
      sha256 "caf7f1bc0f2587610e5c971e1c7e8c51e3a73487ab5ae374d8082e98b513ecc3"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

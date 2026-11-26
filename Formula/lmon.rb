class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.56.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.0/lmon_darwin_amd64.tar.gz"
      sha256 "2a9462c2f9991283834c91616c1b7c8ffc57b8f4e090f037dd4ea27ad9ca5faa"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.0/lmon_darwin_arm64.tar.gz"
      sha256 "1d7372fe44bfee3d41d10177279b45292adf24a23a58e733474192570456cb93"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.0/lmon_linux_amd64.tar.gz"
      sha256 "34673587d111dddd2e54b2126eee3ca26493c23ded6de18dfec260d34d545991"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.0/lmon_linux_arm64.tar.gz"
      sha256 "eae2b93e0d8eabcf96e64d1fa2b16176f7c0ee13199f81bff5b2e2d405e4485b"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

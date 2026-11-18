class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.33.0/lmon_darwin_amd64.tar.gz"
      sha256 "453918e811a95759ea21d1a2d9eb255801571173c510d4a7167a7c0dede9b568"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.33.0/lmon_darwin_arm64.tar.gz"
      sha256 "8c391cb878f9c04eb1a8f7b9609b8f7aaa6bc77db1f0621e12eba0562121644a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.33.0/lmon_linux_amd64.tar.gz"
      sha256 "df87d8dcdb395860815a21359dad15cf6105a7e959f72f25db2699e4fafda037"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.33.0/lmon_linux_arm64.tar.gz"
      sha256 "0a137a3500c1e0b0651d266d2d7af13e95109806d0858a5fc98768f92126b41e"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

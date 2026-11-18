class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.17.0/lmon_darwin_amd64.tar.gz"
      sha256 "0afd66b9fff68d1f692823e07cc156281809d285a9271e385d7f22500435bfcb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.17.0/lmon_darwin_arm64.tar.gz"
      sha256 "da857da4dd50b1ef49dce9fbf656a791bafb4c4fd1b50be50bf623eb63f9214a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.17.0/lmon_linux_amd64.tar.gz"
      sha256 "501162af687f432163318272fce0097a430b3b73ce66756905cc40d746dd4075"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.17.0/lmon_linux_arm64.tar.gz"
      sha256 "44710709e26097437f29c3f49d863954d1714fe26c46cc30226096b0c616d221"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

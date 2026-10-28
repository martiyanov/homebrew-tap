class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.0/lmon_darwin_amd64.tar.gz"
      sha256 "def0539baf2cea1851536e703e89b180d4be1fa4a6ccaecc1fba355ea7c64835"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.0/lmon_darwin_arm64.tar.gz"
      sha256 "86c4794db7a9a0c0a94977adbb1fa5e333e2ed93df289e264abd877636b8737d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.0/lmon_linux_amd64.tar.gz"
      sha256 "05ad926541c137d59b58bd3638ab2314d65032ffd783de289db703dd3e3df2b1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.0/lmon_linux_arm64.tar.gz"
      sha256 "30810294856d6e9434469d14b4b06e6af7b294a2b9f566b4cd275e7e3fef52b8"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

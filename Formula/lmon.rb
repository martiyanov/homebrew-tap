class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.1.0/lmon_darwin_amd64.tar.gz"
      sha256 "8cb90a1215f4fa3c988840df66a72b1967cd2b426729d0324d4771c8fa5d9901"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.1.0/lmon_darwin_arm64.tar.gz"
      sha256 "01fa9d5b5d5bd823d3678de1e4d4673fb6a8c96cf26118606bc0048a41514a4e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.1.0/lmon_linux_amd64.tar.gz"
      sha256 "36b31c509bcfc5d023e1cb7d40374d01414f06553447f2e94e8e8b1ac8f19ef5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.1.0/lmon_linux_arm64.tar.gz"
      sha256 "0f4e998d78cbb6e64cd47d7408c41d3e6432a1c0797f753a78704c01067ee0b3"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.55.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.55.0/lmon_darwin_amd64.tar.gz"
      sha256 "62e558c5bb981546d4c9c37f99ca2af8eb2b9b1360fcd1e8c085c08a28a58089"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.55.0/lmon_darwin_arm64.tar.gz"
      sha256 "a23f8d2a6b6876ec1c40005ece4c9f0a503a00a3182c219aac145c3243762457"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.55.0/lmon_linux_amd64.tar.gz"
      sha256 "e26cad9e801ac4883de20f6820e59805f1385d2419c32873f321be5a1a8ca26c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.55.0/lmon_linux_arm64.tar.gz"
      sha256 "97aca3030def053cb2094919e23e6677d3c4c5517cf113507e30b6a1b307449a"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

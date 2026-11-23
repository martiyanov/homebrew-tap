class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.53.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.0/lmon_darwin_amd64.tar.gz"
      sha256 "1833fde8a150efa0e31f0cb9a7d4045d950ed9dd602b03ab98f5ceae16b7d34f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.0/lmon_darwin_arm64.tar.gz"
      sha256 "8efee42b8ab38a131137750eb74e21f9916103c2a64adba1ac9121d8ac1f4367"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.0/lmon_linux_amd64.tar.gz"
      sha256 "0f55e49f4b48512227b98089d22d294ea1ee368c043eacf1cfb9cf8be97a2633"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.0/lmon_linux_arm64.tar.gz"
      sha256 "7f1e2fd278d41516bce960867b9db193b547893131e36bf90fc36eeebccdc195"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

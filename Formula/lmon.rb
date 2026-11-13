class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.13.0/lmon_darwin_amd64.tar.gz"
      sha256 "57c3c169635b1b3e5d5b05c2ecd8bddcec577db6a49285bc5f5acf974e53cb18"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.13.0/lmon_darwin_arm64.tar.gz"
      sha256 "a39717c33bc126a0226f0f2a34d18003896a1343819fc7e1c0cefbedbe4dab62"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.13.0/lmon_linux_amd64.tar.gz"
      sha256 "8a8d1b8f614581c3dfdf4d1c588888c55511e62b7daf88ab1cde24c88909e40f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.13.0/lmon_linux_arm64.tar.gz"
      sha256 "e50d49fd86aef5fd474b62ea7d74e32216ea5d550ab404789f7fc8525b96097f"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

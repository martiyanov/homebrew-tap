class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.55.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.55.1/lmon_darwin_amd64.tar.gz"
      sha256 "680fd5cfabb001a3f5e91e00d2473f57eb016492cd27cf5d6850c7f4ef80c339"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.55.1/lmon_darwin_arm64.tar.gz"
      sha256 "aaeaa2c72839f48787d048ab52ef5aef9528177d28ca7eaa780d2d1faa883f9c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.55.1/lmon_linux_amd64.tar.gz"
      sha256 "75bfa85936de14a850a0778f3bf99941ac0c45bf0aa7ba71c5eebbb25a930ae4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.55.1/lmon_linux_arm64.tar.gz"
      sha256 "ee5ef7e41ed465a3c263e7517081af47ceed6ebf5f408aff5416f5d7baa8246c"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

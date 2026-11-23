class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.53.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.4/lmon_darwin_amd64.tar.gz"
      sha256 "1c4553522a8211e884bd23f4ff7c8254b4d8d7d91bd3195eae67038f438d6506"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.4/lmon_darwin_arm64.tar.gz"
      sha256 "c420d1e222d08f870c8c9662e4e852304e467f4f1eb9d62c92c5a974fb765c0c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.4/lmon_linux_amd64.tar.gz"
      sha256 "2969688a66792723a274bce8741710e76ab6f58512ad422218c98666e7bc51f5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.4/lmon_linux_arm64.tar.gz"
      sha256 "5193f5fe725b0282876b3d2829a5b6cf0290849572131f8374e9f5628af8c429"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

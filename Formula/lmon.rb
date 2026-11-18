class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.34.0/lmon_darwin_amd64.tar.gz"
      sha256 "f8fb99fd0932b297e028379f7a05bc89992bca6fe9a2e2b4d8df490fe8f56724"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.34.0/lmon_darwin_arm64.tar.gz"
      sha256 "9d6c436baeef569fc331d2f812941eddd8dd9e1ff11f526d9d9f8fd2ff0eeef3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.34.0/lmon_linux_amd64.tar.gz"
      sha256 "0d54accde677c2a42ad27a741590dfd7d458d0ac83d4b6340a16890e3dd2c444"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.34.0/lmon_linux_arm64.tar.gz"
      sha256 "854cf4e3ec515e900bfb436bd8ef903a0f5131dbc92af28a805a4ecd2e7717f0"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

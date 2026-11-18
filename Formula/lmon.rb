class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.16.0/lmon_darwin_amd64.tar.gz"
      sha256 "a7defcac45b35ed765edef42f3deb8610cb78a5fdc7845bda338cd813bce470d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.16.0/lmon_darwin_arm64.tar.gz"
      sha256 "9b88bddbaffe4ab644448d83e65c6674bc19c48f9ce31f9550753faa5a1e2ef1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.16.0/lmon_linux_amd64.tar.gz"
      sha256 "813b31f143f16416a110b58627a517051099485ae2e1ab04dde94df90d3d861f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.16.0/lmon_linux_arm64.tar.gz"
      sha256 "02547d37b90a15a1b6d1dda8dbd5a4b8ed56730671edc2341ebf5d334424f8c9"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.47.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.47.0/lmon_darwin_amd64.tar.gz"
      sha256 "07a7d8ed461653af5e5587c9d07532a9253691c40b7dcb96ca3ce253bfa273b2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.47.0/lmon_darwin_arm64.tar.gz"
      sha256 "329830abf09fecdaa923bee535b242a9f18b0700560912123994864ef2d3af5c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.47.0/lmon_linux_amd64.tar.gz"
      sha256 "3f6ec099d8eeae23da0e4beee3d854c54c4128bc149d06ecda5465af8f79e4f0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.47.0/lmon_linux_arm64.tar.gz"
      sha256 "454d854af6c108be1b638ea2881f16cb556b2d339db55e991d7ae530f40d6dd1"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

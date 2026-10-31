class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.0/lmon_darwin_amd64.tar.gz"
      sha256 "c0558787c15076a6e3eedd30554f7444c4ab079b78065db8442040daec0d441d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.0/lmon_darwin_arm64.tar.gz"
      sha256 "cdddc750e09f5b13b91bcad65e5f099a6c10fa12335a83c0ca38b98aa5d3df47"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.0/lmon_linux_amd64.tar.gz"
      sha256 "bb46a3db94747cafdb080e9562f3ac21660a71966d646870134628d90ee511f4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.7.0/lmon_linux_arm64.tar.gz"
      sha256 "215587454e8fcd32665c88f4d858207dfc6c466c843ea72de565e0801cd8525a"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

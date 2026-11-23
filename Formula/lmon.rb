class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.53.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.7/lmon_darwin_amd64.tar.gz"
      sha256 "a6070934df2aa0f1501e055c4e1e68b8cd56ddbe469a6bd0796a5f8e0c9ae6e8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.7/lmon_darwin_arm64.tar.gz"
      sha256 "7d1e86975dba3278950488c10fa894076bcb250814f8630f062e54d9dee2c3ff"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.7/lmon_linux_amd64.tar.gz"
      sha256 "95a6e168280b043167e3cd7a3a2789d9570d46622920813a2b24d0ba8c5a81bd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.7/lmon_linux_arm64.tar.gz"
      sha256 "e381198d3a666b9b9340158d868ca148418c5078bc6849828e140f269e45c0bd"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

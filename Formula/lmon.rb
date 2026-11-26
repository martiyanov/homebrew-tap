class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.56.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.1/lmon_darwin_amd64.tar.gz"
      sha256 "fad346b96f4cd96ac7e4572764879fec0a1000e4099fc3191d3e11cce3b53752"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.1/lmon_darwin_arm64.tar.gz"
      sha256 "52bb60b22897d1ed4db06d0ea45346bc27d2b31fc8baa4832af45ee34aefd1c3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.1/lmon_linux_amd64.tar.gz"
      sha256 "86744f878286f0873275ffb1c9fc91bf6ddbe28d54e4090c5946dd22278fc4e8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.56.1/lmon_linux_arm64.tar.gz"
      sha256 "8d8028152f5df6d1545fb99d0152559c4977db3fd69521814dfb3dca48d253d0"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

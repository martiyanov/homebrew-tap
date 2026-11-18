class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.23.0/lmon_darwin_amd64.tar.gz"
      sha256 "e0085034fa28c3b923bd9baaf549bac425acd69eccf91bd731ffc64e52f19f63"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.23.0/lmon_darwin_arm64.tar.gz"
      sha256 "8a0bca56c38ced7de298c5a62fe0c6049fd131905f7719259a97d454f6b16d5d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.23.0/lmon_linux_amd64.tar.gz"
      sha256 "12c2ebabc548c1c896da5858635f9bd72e87be8daf0d47dbdbe54880138c5ae0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.23.0/lmon_linux_arm64.tar.gz"
      sha256 "f4edea112aa706ddd99903ea8a97025f38be8e5b160f7647bb3eff5cf2aa5b32"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

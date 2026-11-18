class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.15.1/lmon_darwin_amd64.tar.gz"
      sha256 "fb0ce17b5bb5f7f9a209bda75e0869bf579b3a0d36239ff4c66167bd64af4884"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.15.1/lmon_darwin_arm64.tar.gz"
      sha256 "0034a98819ebfb2a8cbdb24f471bac3c802238a0cf522097f07f6fe28e48f5e0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.15.1/lmon_linux_amd64.tar.gz"
      sha256 "1d7c43f0ac6477daae01f70926a8ce4f1c93c4b30f73336789e9a0dcff10f3f0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.15.1/lmon_linux_arm64.tar.gz"
      sha256 "6ff544ce21045f7d2700bb3a0f8a919aeed5a6c7577e8d1b721f3e1ef17ffc54"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

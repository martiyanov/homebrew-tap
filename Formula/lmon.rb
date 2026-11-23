class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.53.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.1/lmon_darwin_amd64.tar.gz"
      sha256 "a73b1329bc3b4b149706b3c3e79458ef93f128dc281b055889a1044615a59e6c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.1/lmon_darwin_arm64.tar.gz"
      sha256 "393bf6e547d5daef88186a87d869e6e3370faabf06b9077327c583742134295e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.1/lmon_linux_amd64.tar.gz"
      sha256 "327062a870e9eec9e336d61b8a828fa6adb565d3de3c9c8d07388395f4792023"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.1/lmon_linux_arm64.tar.gz"
      sha256 "706c5104d68e7b9a59d158ddab89827b8ab6b356d8652ff1056a818ceda93b2a"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

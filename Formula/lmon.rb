class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.3/lmon_darwin_amd64.tar.gz"
      sha256 "a1d5e6ff7779cf06fccb08260686c93e6f58586e0af4c370327fc92ae075add2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.3/lmon_darwin_arm64.tar.gz"
      sha256 "2b3476c1858a579081342b7dec4830e9fc0b04ef54e2d70be5d974c5feff361c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.3/lmon_linux_amd64.tar.gz"
      sha256 "c72b02d1a42ab93ce2b4e3fe1f0075721d03cbf804356f83f520278a564082f7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.3/lmon_linux_arm64.tar.gz"
      sha256 "56da51d92a577b7c48d0b61283165291c1188ca1041d98a44e69e8bf67306d73"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

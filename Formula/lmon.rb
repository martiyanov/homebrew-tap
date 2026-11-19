class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.46.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.46.0/lmon_darwin_amd64.tar.gz"
      sha256 "cbaf5b198ffcee935714b90a466cc9d4ef7b6c779abd70a892a6142b67456272"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.46.0/lmon_darwin_arm64.tar.gz"
      sha256 "3bae9a48391390a4590014bd1f1d51a2f2531d9b4f74c54a8cd71ca526765745"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.46.0/lmon_linux_amd64.tar.gz"
      sha256 "bd18a2ee6f90dc4c8382aee2e566f4c26ffb6209f80e2d42388adec892b549c6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.46.0/lmon_linux_arm64.tar.gz"
      sha256 "0e07c148d51f0770132e8825afafaf11e6cb331c687b90faedfadb47d192d2a6"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

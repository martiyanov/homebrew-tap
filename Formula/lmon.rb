class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.52.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.52.0/lmon_darwin_amd64.tar.gz"
      sha256 "fe6e42d35b3b329a8942077c132a9e9dd1745a0244c1bb9d9189a43c5839191c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.52.0/lmon_darwin_arm64.tar.gz"
      sha256 "971aa0b0974efed3b20255f8bca7b56954405197deabcf82a011be4a467d2c3b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.52.0/lmon_linux_amd64.tar.gz"
      sha256 "8166363d64a0c7319c7cdbf496e26754a10ab84fa54e136a547483ae7b4ad23b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.52.0/lmon_linux_arm64.tar.gz"
      sha256 "91b62f93f9d49af2e1cf2275280086471ca8973d49159e33d7c5cb0b99079afd"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

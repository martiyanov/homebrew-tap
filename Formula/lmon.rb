class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.51.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.51.0/lmon_darwin_amd64.tar.gz"
      sha256 "6cc389cb670b9e8b3ed471bff67bf30d24403c69cabbd51e8608090580be5cd0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.51.0/lmon_darwin_arm64.tar.gz"
      sha256 "78cd6906f15bbc7fcc9ee321083fc3a731834542ce59091ebb236767b9a62d3a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.51.0/lmon_linux_amd64.tar.gz"
      sha256 "0574f497bece574dfd9ffab96c588170875ea4b692337ea108c552f84765d1d2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.51.0/lmon_linux_arm64.tar.gz"
      sha256 "58edb28e038a2f27b96b5eaaad874ea57a757f1c9be88ab4108e5326771a8d7f"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

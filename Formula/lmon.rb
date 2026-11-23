class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.53.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.2/lmon_darwin_amd64.tar.gz"
      sha256 "8f63e9100d01123597ca4db5f82e334dde06096fca1661ae01022be5a2aa9529"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.2/lmon_darwin_arm64.tar.gz"
      sha256 "a71a3e65cd5bc056740de9b9a7870ad8e06cb8ad39de1271947a8080d2b698a6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.2/lmon_linux_amd64.tar.gz"
      sha256 "8da484406c40c26b4de43256e5e81c153d5add224cdd9bea121f4e9fa0f8890e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.53.2/lmon_linux_arm64.tar.gz"
      sha256 "1e4ed113909031e6b5d72618c5ab6d70bff24f3c002eb4d7965a48420f94f0c7"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

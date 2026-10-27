class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.4/lmon_darwin_amd64.tar.gz"
      sha256 "b6d81f87948d8506b16fb2f5becc6ab014840295a37a0a0c4c8336f722a9683e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.4/lmon_darwin_arm64.tar.gz"
      sha256 "35104bcac2a97fc1dab30757d365e22232237581f139a4c79a1bd11fc5337583"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.4/lmon_linux_amd64.tar.gz"
      sha256 "22282d740d6e2db64cadd5afbe68d6500e0bbeca2faf54a092fb0acdde45f28f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.4/lmon_linux_arm64.tar.gz"
      sha256 "36eebf49c01aab692a17fd7f23a11a7082f8b3d1a854dc9dc47d0ae1b8b68f36"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

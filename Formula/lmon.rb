class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.50.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.50.0/lmon_darwin_amd64.tar.gz"
      sha256 "7af7a52ee5a45147cbb9918859fea63ac238983ef0e5ad90a4b5be3950e06215"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.50.0/lmon_darwin_arm64.tar.gz"
      sha256 "2291e3062be62be725c45d0a9e1bcd7be65d71b22c139d9b246bccfe5624c23e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.50.0/lmon_linux_amd64.tar.gz"
      sha256 "4ab80a933b5b662b62615a8898bbdf63f93169114670101a605a371d87108e3b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.50.0/lmon_linux_arm64.tar.gz"
      sha256 "b51ece2183b80dac1811164591b4b42704bfb358c99d9f407d8f98b74ccdb23e"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

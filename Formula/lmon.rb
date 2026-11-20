class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.49.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.49.0/lmon_darwin_amd64.tar.gz"
      sha256 "5579607983ef782c29ef8be8ad11152be39ab4c7c9c5163ea313f1ccd9a2766f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.49.0/lmon_darwin_arm64.tar.gz"
      sha256 "88eee6062c42819c31a234751d430d5752bf5b5736518c4699696011fd6d45db"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.49.0/lmon_linux_amd64.tar.gz"
      sha256 "39950c7e62edfac4a98b7d1a8b169fa10a1a52d22f043bb5bbbb7c85b314629a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.49.0/lmon_linux_arm64.tar.gz"
      sha256 "ae82039ea98a48eed07cd1af3dc5ff7916aa5f4e357d38af639799b1d418979f"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

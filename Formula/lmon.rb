class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.2/lmon_darwin_amd64.tar.gz"
      sha256 "803c9a14b12ba6a42498a0ea457441b58bf54f6251903d0ebe9a679d40f92553"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.2/lmon_darwin_arm64.tar.gz"
      sha256 "c3e884c2b0102a64c98addea088a4b6ba5125f1a7ec9456b31fb33cde626171c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.2/lmon_linux_amd64.tar.gz"
      sha256 "dd15343529e2fb5881a8a1523a3a2ba97f00b5308acfa4811f0a82b4f340dd2a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.3.2/lmon_linux_arm64.tar.gz"
      sha256 "15f414cf8a553c9eddd8005877c66b5ee19b8869e326f52138c215e508f163e3"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

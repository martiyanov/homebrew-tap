class Lmon < Formula
  desc "Minimal terminal monitor: ping, load average, memory, CPU temperature"
  homepage "https://github.com/martiyanov/lmon"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.2/lmon_darwin_amd64.tar.gz"
      sha256 "f37bac10ab649b2ac8880933444605926798b509280b9fb37116c6776e7c22c4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.2/lmon_darwin_arm64.tar.gz"
      sha256 "ea04d1fb2ead44c7797986ad0fd15fa2bddc67d466ef6cb73622334b1fd5493c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.2/lmon_linux_amd64.tar.gz"
      sha256 "23718cc91800c90549aaf7bca69e5ae138b6f37b647b78dacdc0245118876849"
    end
    if Hardware::CPU.arm?
      url "https://github.com/martiyanov/lmon/releases/download/v1.0.2/lmon_linux_arm64.tar.gz"
      sha256 "664264b7895734b57a615a77d9fda639b0e6ffd2ed3aac4ba4335976c2fe3e62"
    end
  end

  def install
    bin.install "lmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lmon --version")
  end
end

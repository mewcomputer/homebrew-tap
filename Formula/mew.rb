class Mew < Formula
  desc "Terminal AI coding assistant"
  homepage "https://mew.computer"
  version "0.2.0-pre.20261126.150"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261126.150/mew-v0.2.0-pre.20261126.150-aarch64-apple-darwin.tar.gz"
      sha256 "4483e4bd93864c9a65c293594858c846084eeb902c48a6ccd29e2c339d111a47"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261126.150/mew-v0.2.0-pre.20261126.150-x86_64-apple-darwin.tar.gz"
      sha256 "9504d6d74aee8cebca0e7578f10a53f5791e1b104581dc899953bc784493cdf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261126.150/mew-v0.2.0-pre.20261126.150-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "300ef4fbb0b2715253c81e3eef69649775684bf2ccc1edd27aae530bd4181c2f"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261126.150/mew-v0.2.0-pre.20261126.150-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06c655a2c1f0cdb9ce964c095576e8a8a09d1dbaeab176b655dc01243c012a08"
    end
  end

  def install
    bin.install "bin/mew"
  end

  test do
    system "#{bin}/mew", "--version"
  end
end

class Mew < Formula
  desc "Terminal AI coding assistant"
  homepage "https://mew.computer"
  version "0.2.0-pre.20261125.149"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261125.149/mew-v0.2.0-pre.20261125.149-aarch64-apple-darwin.tar.gz"
      sha256 "9c0545b31b0ab00a2fd6fc331a709d15039c143409a9c0efd226e1060ad35bab"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261125.149/mew-v0.2.0-pre.20261125.149-x86_64-apple-darwin.tar.gz"
      sha256 "72724947377348325f00f85de530f44d4b345dc79efaa38a02a19e5f316c223d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261125.149/mew-v0.2.0-pre.20261125.149-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c6eec790b326b797a3d41ae04ef57cb916033f656e4023738bb414d877c2bd2"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261125.149/mew-v0.2.0-pre.20261125.149-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "559563081592cb7f85e6ac6197cd2acbed617edfd4d5480e74c7e3867d9be06a"
    end
  end

  def install
    bin.install "bin/mew"
  end

  test do
    system "#{bin}/mew", "--version"
  end
end

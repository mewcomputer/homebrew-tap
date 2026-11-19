class Mew < Formula
  desc "Terminal AI coding assistant"
  homepage "https://mew.computer"
  version "0.2.0-pre.20261118.142"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261118.142/mew-v0.2.0-pre.20261118.142-aarch64-apple-darwin.tar.gz"
      sha256 "8e5eeada42c3072eda69b0f95f0ec4a4a0f20e9b33cfe7c02a786aacce457fe7"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261118.142/mew-v0.2.0-pre.20261118.142-x86_64-apple-darwin.tar.gz"
      sha256 "671e4713ff0ec2a98c56a9514ba3d7d074406ce3fb455153274c01d692db4e93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261118.142/mew-v0.2.0-pre.20261118.142-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24cb70f2d37f61a982a3b6be492b737eca964453ac2296da05a466e6e5d539ec"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261118.142/mew-v0.2.0-pre.20261118.142-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07a87663ac1b12f44a25f42d675d817768c632729f1b39ddc0c3bb9a835e9061"
    end
  end

  def install
    bin.install "bin/mew"
  end

  test do
    system "#{bin}/mew", "--version"
  end
end

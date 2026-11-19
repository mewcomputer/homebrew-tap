class Mew < Formula
  desc "Terminal AI coding assistant"
  homepage "https://mew.computer"
  version "0.2.0-pre.20261119.143"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261119.143/mew-v0.2.0-pre.20261119.143-aarch64-apple-darwin.tar.gz"
      sha256 "4350393c0916bc407935c6f4052c6fc1e68152c7bd0d565b5233ecfefdee1ad6"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261119.143/mew-v0.2.0-pre.20261119.143-x86_64-apple-darwin.tar.gz"
      sha256 "a63a955210f0d4f849dfe835fbf86fcb7fce5cce7b15d4371754e0f7e3df52da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261119.143/mew-v0.2.0-pre.20261119.143-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "174db69aa74827d33ea9e63a409ce528c29c3826929f97f3d9611b8f172c7157"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261119.143/mew-v0.2.0-pre.20261119.143-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f25b5fbe466190e38e15525b1c99c2c94ea1a06e9acf2f270f8e9c724f6117e"
    end
  end

  def install
    bin.install "bin/mew"
  end

  test do
    system "#{bin}/mew", "--version"
  end
end

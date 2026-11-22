class Mew < Formula
  desc "Terminal AI coding assistant"
  homepage "https://mew.computer"
  version "0.2.0-pre.20261122.146"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261122.146/mew-v0.2.0-pre.20261122.146-aarch64-apple-darwin.tar.gz"
      sha256 "5fae784910cb58159947eea1d9644e22d231da4868313df70b022e84f0096521"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261122.146/mew-v0.2.0-pre.20261122.146-x86_64-apple-darwin.tar.gz"
      sha256 "1e906e4ec0c5bbe4ebcf203047b157479ccf7242079dc50f9fab4118adf38a29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261122.146/mew-v0.2.0-pre.20261122.146-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc582815acfc0f94e1f6d573aff8639f6b9f5a6e00ff9d3f53fb19626e59f7ad"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261122.146/mew-v0.2.0-pre.20261122.146-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e852836e598836af9c28dbdd88b8659f4bc473a5dae5d030d744daf31a8e8ff5"
    end
  end

  def install
    bin.install "bin/mew"
  end

  test do
    system "#{bin}/mew", "--version"
  end
end

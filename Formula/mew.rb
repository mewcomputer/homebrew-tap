class Mew < Formula
  desc "Terminal AI coding assistant"
  homepage "https://mew.computer"
  version "0.2.0-pre.20261123.147"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261123.147/mew-v0.2.0-pre.20261123.147-aarch64-apple-darwin.tar.gz"
      sha256 "4207693c3030c2c28eaafe0f57aaed8d21bc54c418f0f8f6caf0d56822ddd712"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261123.147/mew-v0.2.0-pre.20261123.147-x86_64-apple-darwin.tar.gz"
      sha256 "290d8c38611191c48c8bd2cb0b5872a9a72dc2f32aded330c1d08eb8cba9391b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261123.147/mew-v0.2.0-pre.20261123.147-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "55b83da390713b4f6cbaeea2db10a28a7ee386442f97d8f83e1f19457ad70321"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261123.147/mew-v0.2.0-pre.20261123.147-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42827101df1c4fe4172384e0eb531b380004a6fa9f116f3dd47e14614d8da45f"
    end
  end

  def install
    bin.install "bin/mew"
  end

  test do
    system "#{bin}/mew", "--version"
  end
end

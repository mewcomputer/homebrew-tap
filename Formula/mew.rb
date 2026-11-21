class Mew < Formula
  desc "Terminal AI coding assistant"
  homepage "https://mew.computer"
  version "0.2.0-pre.20261121.145"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261121.145/mew-v0.2.0-pre.20261121.145-aarch64-apple-darwin.tar.gz"
      sha256 "1d62c2b442973957265d9713eae3ae8547771ec3af53d62da6e1e8f77043400c"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261121.145/mew-v0.2.0-pre.20261121.145-x86_64-apple-darwin.tar.gz"
      sha256 "02fd5cc0ed75863f1f68caf259ed75e8a8e8b16576b93566b91f899a681222bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261121.145/mew-v0.2.0-pre.20261121.145-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2f0071e1640835ae5f7d2225b6251121755148b659c1ef873a27c4ebe57dcf9"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261121.145/mew-v0.2.0-pre.20261121.145-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c3e7cb4cc787d2f9dc6581484f1abc2ed07983d863cb2cacbfff58b9093c3a7"
    end
  end

  def install
    bin.install "bin/mew"
  end

  test do
    system "#{bin}/mew", "--version"
  end
end

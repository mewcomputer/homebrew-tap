class Mew < Formula
  desc "Terminal AI coding assistant"
  homepage "https://mew.computer"
  version "0.2.0-pre.20261127.151"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261127.151/mew-v0.2.0-pre.20261127.151-aarch64-apple-darwin.tar.gz"
      sha256 "19a610a1a5d1466ce4b8c484c8cfef447c6db06648604e4322fe7dcc6d563e9e"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261127.151/mew-v0.2.0-pre.20261127.151-x86_64-apple-darwin.tar.gz"
      sha256 "b31ccc40065ec0cedcf240e03c3f939456b8de5f5e42c1497c270feb636f7cf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261127.151/mew-v0.2.0-pre.20261127.151-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6731e15c3b83b39ff976d4a1cfbe1c39837c8b154756f67834a67302dcc4457f"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261127.151/mew-v0.2.0-pre.20261127.151-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26a815784fe39b4b032515950d0ddb16b6f7cdd5d980c761a303ac4d5214d41c"
    end
  end

  def install
    bin.install "bin/mew"
  end

  test do
    system "#{bin}/mew", "--version"
  end
end

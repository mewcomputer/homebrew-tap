class Mew < Formula
  desc "Terminal AI coding assistant"
  homepage "https://mew.computer"
  version "0.2.0-pre.20261120.144"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261120.144/mew-v0.2.0-pre.20261120.144-aarch64-apple-darwin.tar.gz"
      sha256 "58dc1bdc78c2f9fb70f9fb821ba22f044edc982dc83d09fe0893860583190d51"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261120.144/mew-v0.2.0-pre.20261120.144-x86_64-apple-darwin.tar.gz"
      sha256 "7ca0824cd2190cbc3573a10db31e661c8c8512c370382ab40d6ef23a63490fe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261120.144/mew-v0.2.0-pre.20261120.144-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9876de5b6bb2665ea64571e4b0d8cd23c5cc7cf565629018d06c2e51c734d278"
    end
    on_intel do
      url "https://github.com/mewcomputer/mew/releases/download/nightly-v0.2.0-pre.20261120.144/mew-v0.2.0-pre.20261120.144-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46de46ba8394f72027ee9e603b76e97aa6cc4dba7917c44c1670999b83917177"
    end
  end

  def install
    bin.install "bin/mew"
  end

  test do
    system "#{bin}/mew", "--version"
  end
end

class Thagore < Formula
  desc "Thagore self-hosted compiler"
  homepage "https://github.com/thagore-foundation/thagore"
  url "https://github.com/thagore-foundation/thagore/releases/download/v0.3.20-foundation/thagore-linux.tar.gz"
  sha256 "6366f112e93b98bbab452e1a16ebaae4f37250728f891b439929c1f37b16f07a"
  license "MIT"
  version "0.3.20-foundation"

  def install
    bin.install "dist/bin/thag"
    libexec.install "dist/lib/std"
  end

  test do
    assert_match "Thagore", shell_output("#{bin}/thag --help 2>&1", 0)
  end
end

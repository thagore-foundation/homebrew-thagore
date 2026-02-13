class Thagore < Formula
  desc "Thagore self-hosted compiler"
  homepage "https://github.com/thagore-foundation/thagore"
  url "https://github.com/thagore-foundation/thagore/releases/download/v0.0.0/thag-linux.tar.gz"
  sha256 "REPLACE_ME"
  license "MIT"
  version "0.0.0"

  def install
    bin.install "dist/bin/thag"
    libexec.install "dist/lib/std"
  end

  test do
    assert_match "Thagore", shell_output("#{bin}/thag --help 2>&1", 0)
  end
end
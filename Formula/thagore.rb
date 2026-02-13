class Thagore < Formula
  desc "Thagore self-hosted compiler"
  homepage "https://github.com/thagore-foundation/thagore"
  url "https://github.com/thagore-foundation/thagore/releases/download/v0.3.13-foundation/thag-linux.tar.gz"
  sha256 "37f0e0ec2d39d4e6069420e0db4abcfee5645da8002f81c2e0db4b7bcd689f66"
  license "MIT"
  version "0.3.13-foundation"

  def install
    bin.install "dist/bin/thag"
    libexec.install "dist/lib/std"
  end

  test do
    assert_match "Thagore", shell_output("#{bin}/thag --help 2>&1", 0)
  end
end
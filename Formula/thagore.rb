class Thagore < Formula
  desc "Thagore self-hosted compiler"
  homepage "https://github.com/thagore-foundation/thagore"
  url "https://github.com/thagore-foundation/thagore/releases/download/v0.3.14-foundation/thag-linux.tar.gz"
  sha256 "c043480f926b7122283cd461e1e4ce2ae53885422a8d69e5be68965f3f3b470f"
  license "MIT"
  version "0.3.14-foundation"

  def install
    bin.install "dist/bin/thag"
    libexec.install "dist/lib/std"
  end

  test do
    assert_match "Thagore", shell_output("#{bin}/thag --help 2>&1", 0)
  end
end

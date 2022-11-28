VERSION = "0.2.0"

class Gitsync < Formula
  desc "A CLI to sync git repositories."
  homepage "https://github.com/restechnica/gitsync-cli"
  license "MPL-2.0"
  url "https://github.com/restechnica/gitsync-cli/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "d13a229c86a35978548e19aa2dc1f311373a591fe20572370bcf320d9ba4f953" # on windows use `CertUtil -hashfile <file location> SHA256`

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/gitsync"
  end
end

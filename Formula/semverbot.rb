VERSION = "1.4.1"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "15268f5d87d6f86e60b1d95f12ea2a06e43fd11a7f120016461239723534887d" # on windows use `CertUtil -hashfile <file location> SHA256`

  depends_on "go" => :build

  def install
    system "make", "simple-build"
    bin.install "bin/sbot"
  end
end

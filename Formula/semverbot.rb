VERSION = "1.3.1"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "6739413b22fc98e2c32fcff3c4f6bd0ad2e50827b24b01b8cbeed8a2fede72b2" # on windows use `CertUtil -hashfile <file location> SHA256`

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/sbot"
  end
end

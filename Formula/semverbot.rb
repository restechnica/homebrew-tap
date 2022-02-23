VERSION = "1.1.0"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "6dc2449b7b3c18b3ebaf2529480431c8884c7bbb618a586bdfbd305d174ea7f6" # on windows use `CertUtil -hashfile <file location> SHA256`

  depends_on "go" => :build

  def instal
    system "make", "build"
    bin.install "bin/sbot"
  end
end

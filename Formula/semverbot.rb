VERSION = "1.1.0"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "5840b98567c70431f26bf4a716e3742b9b063176fedc2f8c4807a1858128f8a9" # on windows use `CertUtil -hashfile <file location> SHA256`

  depends_on "go" => :build

  def instal
    system "make", "build"
    bin.install "bin/sbot"
  end
end

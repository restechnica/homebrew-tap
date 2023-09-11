VERSION = "1.3.2"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "6371f780fafa44982f421d4359b46342e6ecb31c93b28cbe7b895832439aadbb" # on windows use `CertUtil -hashfile <file location> SHA256`

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/sbot"
  end
end

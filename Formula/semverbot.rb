VERSION = "0.0.3"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "42DE3817E14D22AB57E7F4599CAFC7E477EC279FF22227F48E0883C022E67630"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/sbot"
  end
end

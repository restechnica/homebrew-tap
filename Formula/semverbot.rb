VERSION = "0.0.4"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "3ff1be57ca9d6658c00bd786def8dc2d807e1831f046883eab41c02e0e5668e6"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/sbot"
  end
end

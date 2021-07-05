VERSION = "0.2.0"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "0091ce7f62b8f0a310c65dae62ba583bae7da9eab1fd8881dde07c0d296a7d0d"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/sbot"
  end
end

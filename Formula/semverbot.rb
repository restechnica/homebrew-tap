VERSION = "0.1.0"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "e28a89417d33f4df0f4645cbedbea6181c2d87f2a4b3b50261208f3f77cb3220"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/sbot"
  end
end


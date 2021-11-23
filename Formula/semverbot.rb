VERSION = "1.0.0"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "57f2d828b8f92e3275996661bea1cb7acdbf208ab9d29d2fb5369b5ae3618f80" # on windows use `CertUtil -hashfile <file location> SHA256`

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/sbot"
  end
end

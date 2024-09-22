VERSION = "1.7.1"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  # on windows use `CertUtil -hashfile <file location> SHA256`
  # on macos: shasum -a 256 /path/to/file
  sha256 "9cdbdf8e4ebbd49cacb480f5c622d5e9ce4b8dc29acbe70d55b79d487a5bcdb1"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/sbot"
  end
end

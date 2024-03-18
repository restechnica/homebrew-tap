VERSION = "1.6.3"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  # on windows use `CertUtil -hashfile <file location> SHA256`
  # on macos: shasum -a 256 /path/to/file
  sha256 "ce00065bf5781ef602782de4f52feadc788c94dfefcdc5a3d54935e180f78c8e"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/sbot"
  end
end

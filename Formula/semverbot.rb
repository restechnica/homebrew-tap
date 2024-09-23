VERSION = "1.7.2"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  # on windows use `CertUtil -hashfile <file location> SHA256`
  # on macos: shasum -a 256 /path/to/file
  # curl -L "https://github.com/restechnica/semverbot/archive/refs/tags/v1.7.1.tar.gz" | shasum -a 256
  sha256 "019da7d47e293663c4b84df4a863106d5712449ce97dec4d818b313140c94c1d"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/sbot"
  end
end

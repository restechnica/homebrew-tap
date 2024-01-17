VERSION = "1.6.2"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  # on windows use `CertUtil -hashfile <file location> SHA256`
  # on macos: shasum -a 256 /path/to/file
  sha256 "fa23bce6d2fa0aa35203f9263a025aebc46c40433003f0360ddc4cb4a4554c02"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "run.nu", "build", "--version", VERSION
    bin.install "bin/sbot"
  end
end

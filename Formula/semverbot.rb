VERSION = "1.7.0"

class Semverbot < Formula
  desc "A CLI which automates semver versioning."
  homepage "https://github.com/restechnica/semverbot"
  license "MPL-2.0"
  url "https://github.com/restechnica/semverbot/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  # on windows use `CertUtil -hashfile <file location> SHA256`
  # on macos: shasum -a 256 /path/to/file
  sha256 "af40e5757c14a355f5cd6094938584937184ef4468a261f1ee512c40c48d35f5"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/sbot"
  end
end

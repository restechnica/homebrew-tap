VERSION = "0.1.0"

class Nuke < Formula
  desc "A modern task runner experience for Nushell."
  homepage "https://github.com/restechnica/nuke"
  license "MPL-2.0"
  url "https://github.com/restechnica/nuke/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  # on windows use `CertUtil -hashfile <file location> SHA256`
  # on macos: shasum -a 256 /path/to/file
  sha256 "824579c760d0a4a91cdcebed80eb9927141b052782cad72cbb17f1e640149a22"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/nuke"
  end
end

VERSION = "0.5.0"

class Gitsync < Formula
  desc "A CLI to sync git repositories."
  homepage "https://github.com/restechnica/gitsync-cli"
  license "MPL-2.0"
  url "https://github.com/restechnica/gitsync-cli/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "7bf08d41ceab689fb4c61c4a0aac05343ffe73cf8d3f64c517d60240c200eed6" # on windows use `CertUtil -hashfile <file location> SHA256`

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/sbot"
  end
end

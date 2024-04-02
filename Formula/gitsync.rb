VERSION = "0.5.1"

class Gitsync < Formula
  desc "A CLI to sync git repositories."
  homepage "https://github.com/restechnica/gitsync-cli"
  license "MPL-2.0"
  url "https://github.com/restechnica/gitsync-cli/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "e13f637eeabab3178c4e3555524bdff34e7db25b6593b6add77d5b30d1cdfbf8"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/gitsync"
  end
end

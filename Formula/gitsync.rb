VERSION = "0.5.1"

class Gitsync < Formula
  desc "A CLI to sync git repositories."
  homepage "https://github.com/restechnica/gitsync-cli"
  license "MPL-2.0"
  url "https://github.com/restechnica/gitsync-cli/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "fd8917330f0cfef59aad070dfdb462d94f95438809228edb10abd683620df0ca"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/gitsync"
  end
end

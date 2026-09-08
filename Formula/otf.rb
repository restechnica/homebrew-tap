VERSION = "0.1.0"

class OpinionatedTerraform < Formula
  desc "A lightweight opinionated wrapper around Terraform."
  homepage "https://github.com/restechnica/opinionated-terraform"
  license "MIT"
  url "https://github.com/restechnica/opinionated-terraform/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "4b60e2cd31dc6f026b9df9064de48a6ba60f9c02ac6d6ea25570b72ac7c868b4"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/otf"
  end
end

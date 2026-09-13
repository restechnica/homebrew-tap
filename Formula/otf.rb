VERSION = "0.1.2"

class Otf < Formula
  desc "A lightweight opinionated wrapper around Terraform."
  homepage "https://github.com/restechnica/opinionated-terraform"
  license "MIT"
  url "https://github.com/restechnica/opinionated-terraform/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "e7b3c990de54f0d998051c5fca59b6f01b88572acc46e678551cfca4dede4be1"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/otf"
  end
end

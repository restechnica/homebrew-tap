VERSION = "0.1.3"

class Otf < Formula
  desc "A lightweight opinionated wrapper around Terraform."
  homepage "https://github.com/restechnica/opinionated-terraform"
  license "MIT"
  url "https://github.com/restechnica/opinionated-terraform/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "2072a7f9ef3bac646ab24c8123ed234ecacc5bbd2da0b6e324c06628a0353651"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/otf"
  end
end

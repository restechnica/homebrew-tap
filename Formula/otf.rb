VERSION = "0.1.1"

class Otf < Formula
  desc "A lightweight opinionated wrapper around Terraform."
  homepage "https://github.com/restechnica/opinionated-terraform"
  license "MIT"
  url "https://github.com/restechnica/opinionated-terraform/archive/refs/tags/v#{VERSION}.tar.gz"
  version VERSION
  sha256 "d452ae3ef4dfe60247118f9d2e04ec50a709079fa6370ba2e8a47b2cbb5a5721"

  depends_on "go" => :build
  depends_on "nushell" => :build

  def install
    system "nu", "main.nu", "build", "--version", VERSION
    bin.install "bin/otf"
  end
end

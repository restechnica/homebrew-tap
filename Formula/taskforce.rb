class Taskforce < Formula
  desc "Tool to build, change, and version operations"
  homepage "https://github.com/restechnica/taskforce"
  license "MPL-2.0"
  url "https://github.com/restechnica/taskforce/archive/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "75ddd2c32ae8ed15412f8cce127776b9062b683d1fe55f66a8f6adf8622a020b"

  depends_on "go@1.15" => :build

  def install
    system "make", "build"
    bin.install "bin/taskforce"
  end
end

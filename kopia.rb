# This file was generated by GoReleaser. DO NOT EDIT.
class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  url "https://github.com/kopia/kopia/releases/download/v0.3.0-pre10/kopia-0.3.0-pre10-macOS-x64.tar.gz"
  version "0.3.0-pre10"
  sha256 "9d3ead0be81726b85f768fd1e67a2f1a701f6449967f8063fc5dd26c4ed86189"

  def install
    bin.install "kopia"
  end
end

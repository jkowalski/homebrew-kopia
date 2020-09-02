# This file was generated by GoReleaser. DO NOT EDIT.
class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.6.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kopia/kopia/releases/download/v0.6.4/kopia-0.6.4-macOS-x64.tar.gz"
    sha256 "e2aca8d22177abcfff8537c6fb5c440a081dd050266e8fac3fae106f360c156d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kopia/kopia/releases/download/v0.6.4/kopia-0.6.4-linux-x64.tar.gz"
      sha256 "e3d872f6ed4cfe3735413a605fc09d1c2eb79abd64b754cf8e918710a6153e71"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kopia/kopia/releases/download/v0.6.4/kopia-0.6.4-linux-arm64.tar.gz"
        sha256 "03a54ab795664b022ef6a47480e1a02488d76667139f62e330440e609a479623"
      else
        url "https://github.com/kopia/kopia/releases/download/v0.6.4/kopia-0.6.4-linux-arm.tar.gz"
        sha256 "d8e086f81d3e71e954a196d2e4b0e94fa55bc656a578cb958ec2b92f202dbc5e"
      end
    end
  end

  def install
    bin.install "kopia"
  end
end

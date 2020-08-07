# This file was generated by GoReleaser. DO NOT EDIT.
class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.6.0-rc4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kopia/kopia/releases/download/v0.6.0-rc4/kopia-0.6.0-rc4-macOS-x64.tar.gz"
    sha256 "979a95e5cc724dbb6847b8b9be521c5b1a132a6c398783b3fe7fe340c51b3474"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kopia/kopia/releases/download/v0.6.0-rc4/kopia-0.6.0-rc4-linux-x64.tar.gz"
      sha256 "eb1c98955aa5f80a655f7ef2e0e464317bc85fa028f96e1449efc9f77aa5f612"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kopia/kopia/releases/download/v0.6.0-rc4/kopia-0.6.0-rc4-linux-arm64.tar.gz"
        sha256 "622fabc849a155f6ebdc88ad007595e82479e448f4ff26d60a091c0d02cd93e5"
      else
        url "https://github.com/kopia/kopia/releases/download/v0.6.0-rc4/kopia-0.6.0-rc4-linux-arm.tar.gz"
        sha256 "30a474626195c9e46c049448c3d34fbb12628594f851e06be0adcc02bbde6960"
      end
    end
  end

  def install
    bin.install "kopia"
  end
end

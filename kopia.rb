# This file was generated by GoReleaser. DO NOT EDIT.
class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.6.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kopia/kopia/releases/download/v0.6.3/kopia-0.6.3-macOS-x64.tar.gz"
    sha256 "8a5b7c97ae2ba1f8e197382536028bef6f8e633dd94db5968bc416214f77da44"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kopia/kopia/releases/download/v0.6.3/kopia-0.6.3-linux-x64.tar.gz"
      sha256 "1f5cbf5326d688b0343f757c4a90905935caed971f90176a195ea0d4aa74f6ab"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kopia/kopia/releases/download/v0.6.3/kopia-0.6.3-linux-arm64.tar.gz"
        sha256 "fbe7bc0d20220562c197b7b14b2cb0229bbf1d4ae6a28b92de5615b9eb47fd05"
      else
        url "https://github.com/kopia/kopia/releases/download/v0.6.3/kopia-0.6.3-linux-arm.tar.gz"
        sha256 "c49ac137e7ba15cfacad7286db3d31876b24f49cbf18688d1271b4210ff8cc87"
      end
    end
  end

  def install
    bin.install "kopia"
  end
end

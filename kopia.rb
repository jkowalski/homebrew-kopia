# This file was generated by GoReleaser. DO NOT EDIT.
class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "0.5.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kopia/kopia/releases/download/0.5.2/kopia-0.5.2-macOS-x64.tar.gz"
    sha256 "f7ed1cc7556dfdfdc750d324c1177a6ed330cdea51f7938134017c41b405fe85"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kopia/kopia/releases/download/0.5.2/kopia-0.5.2-linux-x64.tar.gz"
      sha256 "2a69217eeec813b1d4f2abf2a45b8c55fc05da27c964b638d5029f2acb9d8b93"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kopia/kopia/releases/download/0.5.2/kopia-0.5.2-linux-arm64.tar.gz"
        sha256 "3a0fe9426e2b2f04544a4672b7b2caeb8c3f4fcc4d0c1dc0e1d4495d8ec14131"
      else
        url "https://github.com/kopia/kopia/releases/download/0.5.2/kopia-0.5.2-linux-arm.tar.gz"
        sha256 "177cf0eb1c1f05fab28534f06805e47b03606d00e26ea0566f90b73e70df8b72"
      end
    end
  end

  def install
    bin.install "kopia"
  end
end

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  version "0.11.1"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/windmilleng/tilt/releases/download/v0.11.1/tilt.0.11.1.mac.x86_64.tar.gz"
    sha256 "5ad7e5121c5f8f59909e78078e6195b4468c1e9305a599c67dbec0f94d6d33bd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/windmilleng/tilt/releases/download/v0.11.1/tilt.0.11.1.linux.x86_64.tar.gz"
      sha256 "0f173668341b5d14caf6fad659def72412c5e62d66d5f37d930e5efc1d5532d0"
    end
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

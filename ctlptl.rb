# This file was generated by GoReleaser. DO NOT EDIT.
class Ctlptl < Formula
  desc "Making local Kubernetes clusters easy to set up and tear down"
  homepage "https://ctlptl.dev/"
  version "0.2.1"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/tilt-dev/ctlptl/releases/download/v0.2.1/ctlptl.0.2.1.mac.x86_64.tar.gz"
    sha256 "85581d040051966c32061baebc0993ca79c3e60b38910168ea9896f35b228e72"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/tilt-dev/ctlptl/releases/download/v0.2.1/ctlptl.0.2.1.linux.x86_64.tar.gz"
      sha256 "cf8ef30194ee470ba495a86cdcf989ecb30aab48307d1902eac775fc5ca20352"
    end
  end

  def install
    bin.install "ctlptl"
  end

  test do
    system "#{bin}/ctlptl version"
  end
end

class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/v0.5.1/tilt.0.5.1.mac.x86_64.tar.gz"
  version "0.5.1"
  sha256 "6b0cdcd5a4154a6292b8b331cdf324fcbca2572bc5e8f20e42721646c73dcf99"
  
  depends_on "docker"
  depends_on "kubernetes-cli"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

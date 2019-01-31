class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.6.1/tilt.0.6.1.mac.x86_64.tar.gz"
  version "0.6.1"
  sha256 "ff292e71fa7f2aeda2673d7654bdc14396135ed0a2b8b8bc4ed29c5ff808611e"
  
  depends_on "docker"
  depends_on "kubernetes-cli"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

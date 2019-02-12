class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.7.3/tilt.0.7.3.mac.x86_64.tar.gz"
  version "0.7.3"
  sha256 "0860620ea6319071d576d6df6796d978ff7f82a846506657b38ec7514e7c685d"
  
  depends_on "docker"
  depends_on "kubernetes-cli"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

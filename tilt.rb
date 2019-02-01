class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.7.0/tilt.0.7.0.mac.x86_64.tar.gz"
  version "0.7.0"
  sha256 "459e02e871f71fcfb919a19b430fbeb57d9467c7c9723a9c23fea2892850007b"
  
  depends_on "docker"
  depends_on "kubernetes-cli"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

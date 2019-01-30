class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "https://github.com///releases/download/v0.5.1/tilt.0.5.1.mac.x86_64.tar.gz"
  version "0.5.1"
  sha256 "68924dc20c45977215c10e4d3805acaf0028b076f4414c76700c5448e9d656f8"
  
  depends_on "docker"
  depends_on "kubernetes-cli"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

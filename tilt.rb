class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.6.0/tilt.0.6.0.mac.x86_64.tar.gz"
  version "0.6.0"
  sha256 "09bce0260c497e2e2744d06a8a8fce3f24352a8f3c48f43c231e6cec77d541d7"
  
  depends_on "docker"
  depends_on "kubernetes-cli"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

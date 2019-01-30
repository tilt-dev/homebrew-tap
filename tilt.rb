class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.5.1/tilt.0.5.1.mac.x86_64.tar.gz"
  version "0.5.1"
  sha256 "a56da034d6ab6303041c014078eeb22212122a43c773d45d545195e9b8cd9ad2"
  
  depends_on "docker"
  depends_on "kubernetes-cli"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

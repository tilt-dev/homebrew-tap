class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.5.1/tilt.0.5.1.mac.x86_64.tar.gz"
  version "0.5.1"
  sha256 "6c96404302840ba34f6d43012f7351948fa017c05cc068b035c70aca5742803f"
  
  depends_on "docker"
  depends_on "kubernetes-cli"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

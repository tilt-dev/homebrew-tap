class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.7.9/tilt.0.7.9.mac.x86_64.tar.gz"
  version "0.7.9"
  sha256 "4b3b159f9939e1a3953b4a9c1c9552760d28057dc2194c56c9ffa6cafdb41a5b"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

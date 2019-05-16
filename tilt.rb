class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.8.4/tilt.0.8.4.mac.x86_64.tar.gz"
  version "0.8.4"
  sha256 "d34fcf2d2f9883fb3aa8ba59ba3f839504acf947e1f5b5778a5438bc4c19aa78"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

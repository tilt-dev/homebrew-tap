class Tilt < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "http://github.com/windmilleng/tilt/releases/download/v0.8.2/tilt.0.8.2.mac.x86_64.tar.gz"
  version "0.8.2"
  sha256 "02464d32fb89c8a012880d28ac2b9d78bca0e69ec0ddea8eb27bc8f1f292079d"

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
  end
end

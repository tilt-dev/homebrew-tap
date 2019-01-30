class  < Formula
  desc "Local Kubernetes development with no stress"
  homepage "https://tilt.build/"
  url "https://github.com///releases/download/v0.5.1/.0.5.1.mac.x86_64.tar.gz"
  version "0.5.1"
  sha256 "d0ebec50d41ea3c1accd0925d19375f419a4517ef53b32a186f69eeec21ec4c0"
  
  depends_on "docker"
  depends_on "kubernetes-cli"

  def install
    bin.install ""
  end

  test do
    system "#{bin}/tilt version"
  end
end

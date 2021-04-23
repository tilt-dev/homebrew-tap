# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.19.7"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.19.7/tilt.0.19.7.mac.x86_64.tar.gz"
    sha256 "9f68cbae7d99629ac868716e7ab5c8ffce9bc4cc0d5ec94c52e55c9a653d942e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.19.7/tilt.0.19.7.mac.arm64_ALPHA.tar.gz"
    sha256 "d6dbdb176c660c2c0202cb819ae7f4fa300395c37a59695c3bc5a56de2f0ca16"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.19.7/tilt.0.19.7.linux.x86_64.tar.gz"
    sha256 "ec1f72a55a54003a81e57201f8f62154e49073aed3a6e5e45521918c4a8c83d4"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.19.7/tilt.0.19.7.linux.arm_ALPHA.tar.gz"
    sha256 "aa83cd8097d3c238ade0ea2625ddc4664238cf7812e491ebc68b243abc5a53c5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.19.7/tilt.0.19.7.linux.arm64_ALPHA.tar.gz"
    sha256 "949dd06c66dba8a7e517d0fe549511666c407b3969eb9c7b766b9c1007784d10"
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
    system "#{bin}/tilt verify-install"
  end
end

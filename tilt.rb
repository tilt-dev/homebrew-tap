# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.18.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.18.0/tilt.0.18.0.mac.x86_64.tar.gz"
    sha256 "8322d6efbd85f3161e4acd8f620ac675b2c801be8d9971e686f602dc6c779e36"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.18.0/tilt.0.18.0.linux.x86_64.tar.gz"
      sha256 "e38644a09465cbd76c89796f7c5410b6666762434e5595fa747beb23c0d3fa42"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tilt-dev/tilt/releases/download/v0.18.0/tilt.0.18.0.linux.arm64_ALPHA.tar.gz"
        sha256 "a760a521dbb995767e56ea3922e339e955d5aec02a44f6394baf5f35ad599908"
      else
        url "https://github.com/tilt-dev/tilt/releases/download/v0.18.0/tilt.0.18.0.linux.arm_ALPHA.tar.gz"
        sha256 "8466b25c73bd9347b24aa9a23a45d68a1b2f6059e62294c4c88471deef08b096"
      end
    end
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
    system "#{bin}/tilt verify-install"
  end
end

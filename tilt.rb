# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.20.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.2/tilt.0.20.2.mac.x86_64.tar.gz"
    sha256 "e529e7878d20aff27d5b3e10d1c56039255aee4ff8bc928ec37ddaba0faf534f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.2/tilt.0.20.2.mac.arm64_ALPHA.tar.gz"
    sha256 "3b0717e3b55f0a4fdac7c14be189afdc43f28a6f9fd384106c7fc40e240cd1dd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.2/tilt.0.20.2.linux.x86_64.tar.gz"
    sha256 "420748ea363658121f431699df1674a5598e251f2cd4152cc2efd80dd9fa242e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.2/tilt.0.20.2.linux.arm_ALPHA.tar.gz"
    sha256 "fbd54f63e5ed8bdeea973304cba0942c6cf5b1db3cb0393e837cd36f23272c8e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.20.2/tilt.0.20.2.linux.arm64_ALPHA.tar.gz"
    sha256 "4eda564d968b0b479f0f4b44019ec76cf3960f5f9fc6bf7ec0b124597382048b"
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
    system "#{bin}/tilt verify-install"
  end
end

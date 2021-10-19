# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "Tilt powers multi-service developments for teams that deploy to Kubernetes."
  homepage "https://tilt.dev/"
  version "0.22.13"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.22.13/tilt.0.22.13.mac.x86_64.tar.gz"
    sha256 "23eeb626663f6e73ec1b87db5c0fe4e1886aa3b9f17df0e2af95c4f02ea037ed"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.22.13/tilt.0.22.13.mac.arm64_ALPHA.tar.gz"
    sha256 "5ce98baf3055871828b72268896ff446611df95300512fc9014f522751edc6fe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.22.13/tilt.0.22.13.linux.x86_64.tar.gz"
    sha256 "fafbf2f684d100f20ad6a755957f9d57c2ccb58a3e8d59f264eb708f85662e51"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.22.13/tilt.0.22.13.linux.arm_ALPHA.tar.gz"
    sha256 "6fcd11ce8c33bbc5fad8896d4bbdf19b45aef3d3290094d72729fa9580a4d0b7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/tilt-dev/tilt/releases/download/v0.22.13/tilt.0.22.13.linux.arm64_ALPHA.tar.gz"
    sha256 "d501a730ec1eba6e24c194e503a4a8de9fe9b292d83f0733066be2a63cde910e"
  end

  def install
    bin.install "tilt"
  end

  test do
    system "#{bin}/tilt version"
    system "#{bin}/tilt verify-install"
  end
end

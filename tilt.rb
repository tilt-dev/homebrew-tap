# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "A dev environment as code for microservice apps"
  homepage "https://tilt.dev/"
  version "0.26.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.26.3/tilt.0.26.3.mac.arm64.tar.gz"
      sha256 "10e871eb832bda83439fef7c61afcf24538b5fcec6dfc5b1c85cd643f1f0bd99"

      def install
        bin.install "tilt"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "bash")
        (bash_completion/"tilt").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "zsh")
        (zsh_completion/"_tilt").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "fish")
        (fish_completion/"tilt.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.26.3/tilt.0.26.3.mac.x86_64.tar.gz"
      sha256 "9f9ccd09b01d7a56b10042ffca2c90ba5adb4bc23f674be8e07db2e0b155f19f"

      def install
        bin.install "tilt"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "bash")
        (bash_completion/"tilt").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "zsh")
        (zsh_completion/"_tilt").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "fish")
        (fish_completion/"tilt.fish").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.26.3/tilt.0.26.3.linux.arm.tar.gz"
      sha256 "e316939a75d4e196c97409e3644e6f28b9131f23d1f4dc80aa5f45b0a6e33616"

      def install
        bin.install "tilt"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "bash")
        (bash_completion/"tilt").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "zsh")
        (zsh_completion/"_tilt").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "fish")
        (fish_completion/"tilt.fish").write output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.26.3/tilt.0.26.3.linux.arm64.tar.gz"
      sha256 "7b2ac22707effe23e1b230f50a2b35fc0624f78980e937da55a7ce046f9e8018"

      def install
        bin.install "tilt"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "bash")
        (bash_completion/"tilt").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "zsh")
        (zsh_completion/"_tilt").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "fish")
        (fish_completion/"tilt.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.26.3/tilt.0.26.3.linux.x86_64.tar.gz"
      sha256 "b58a3908ed2388c1b1cf5f58d07f95aad265614d769ff72d514d0f600683d014"

      def install
        bin.install "tilt"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "bash")
        (bash_completion/"tilt").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "zsh")
        (zsh_completion/"_tilt").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/tilt", "completion", "fish")
        (fish_completion/"tilt.fish").write output
      end
    end
  end

  test do
    system "#{bin}/tilt version"
    system "#{bin}/tilt verify-install"
  end
end

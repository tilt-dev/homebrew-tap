# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "A dev environment as code for microservice apps"
  homepage "https://tilt.dev/"
  version "0.27.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.3/tilt.0.27.3.mac.arm64.tar.gz"
      sha256 "d087bf2a2229fd07bb52798f867c6710478d5be461b393e8ec844a0c382634b5"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.3/tilt.0.27.3.mac.x86_64.tar.gz"
      sha256 "17ad134f9c2b11a1c6a8ae250ed76ea60892ba75e9c2a1d526a8e63867c66b13"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.3/tilt.0.27.3.linux.arm.tar.gz"
      sha256 "222437c1ab21c8e6e21a5a8980462e7f2c730a0e9a979d3af6b714c6896f0c31"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.3/tilt.0.27.3.linux.arm64.tar.gz"
      sha256 "998558b9f06d51f281bf142ddaea3f4e89c17775b9c2926dada8da70190c28a4"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.3/tilt.0.27.3.linux.x86_64.tar.gz"
      sha256 "1fcbe46fc90655336461864392c749ed245acfe5f9c3dd504eaa9aa11161630f"

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

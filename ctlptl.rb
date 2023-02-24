# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ctlptl < Formula
  desc "Making local Kubernetes clusters easy to set up and tear down"
  homepage "https://ctlptl.dev/"
  version "0.8.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.17/ctlptl.0.8.17.mac.arm64.tar.gz"
      sha256 "614e480ae40d7eb3a63cad010d4e82554bf10bfaa186f259b09eddea3b459335"

      def install
        bin.install "ctlptl"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "bash")
        (bash_completion/"ctlptl").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "zsh")
        (zsh_completion/"_ctlptl").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "fish")
        (fish_completion/"ctlptl.fish").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.17/ctlptl.0.8.17.mac.x86_64.tar.gz"
      sha256 "3fa68d3004a1ce34ddeb4a5a84f212046d249b5f4fcc63a43984e632990f276b"

      def install
        bin.install "ctlptl"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "bash")
        (bash_completion/"ctlptl").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "zsh")
        (zsh_completion/"_ctlptl").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "fish")
        (fish_completion/"ctlptl.fish").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.17/ctlptl.0.8.17.linux.x86_64.tar.gz"
      sha256 "1630b23b64780abb2231ae58810227355a9030404c5b6f3b857ad9b35da99918"

      def install
        bin.install "ctlptl"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "bash")
        (bash_completion/"ctlptl").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "zsh")
        (zsh_completion/"_ctlptl").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "fish")
        (fish_completion/"ctlptl.fish").write output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.17/ctlptl.0.8.17.linux.arm64.tar.gz"
      sha256 "428f5019fe6c5b25c58310b9bdcf4f13ed701076f3437cbd52898af90f755fb6"

      def install
        bin.install "ctlptl"

        # Install bash completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "bash")
        (bash_completion/"ctlptl").write output

        # Install zsh completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "zsh")
        (zsh_completion/"_ctlptl").write output

        # Install fish completion
        output = Utils.safe_popen_read("#{bin}/ctlptl", "completion", "fish")
        (fish_completion/"ctlptl.fish").write output
      end
    end
  end

  test do
    system "#{bin}/ctlptl version"
  end
end

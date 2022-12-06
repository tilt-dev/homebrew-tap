# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ctlptl < Formula
  desc "Making local Kubernetes clusters easy to set up and tear down"
  homepage "https://ctlptl.dev/"
  version "0.8.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.14/ctlptl.0.8.14.mac.arm64.tar.gz"
      sha256 "24e290bab5da7db7aea4fe66d2cb835629411b87aeec9d29c83fb48755093e86"

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
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.14/ctlptl.0.8.14.mac.x86_64.tar.gz"
      sha256 "3dd184ab4e302b54b8657be215a0ceb9e049924f05c090f4db5a42210cdba79f"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.14/ctlptl.0.8.14.linux.arm64.tar.gz"
      sha256 "8c8b540e8822b2f2897009ec24b42beb5ac15415d1cbd954dc31ceabe3658b05"

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
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.14/ctlptl.0.8.14.linux.x86_64.tar.gz"
      sha256 "e3759b032910af6f66ae6a49ea588faab9937e027fe064e50b37b99dfbc04e25"

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

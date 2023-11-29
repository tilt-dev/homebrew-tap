# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ctlptl < Formula
  desc "Making local Kubernetes clusters easy to set up and tear down"
  homepage "https://ctlptl.dev/"
  version "0.8.25"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.25/ctlptl.0.8.25.mac.x86_64.tar.gz"
      sha256 "b42fe4109f50a6016fe12f4d6491c0024157e1f8c287b94dc3961f664850d2d8"

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
    if Hardware::CPU.arm?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.25/ctlptl.0.8.25.mac.arm64.tar.gz"
      sha256 "f3f9332108cb272c34e9d062b3d4150d5c39fa3e051c0cfab2bd978ec04b13cc"

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
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.25/ctlptl.0.8.25.linux.arm64.tar.gz"
      sha256 "0a4cdb2406673500f8de82c72797249add6b73a2fd617e5cdfa2e8972bff2ec3"

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
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.25/ctlptl.0.8.25.linux.x86_64.tar.gz"
      sha256 "2374c42d8a43d68e48875b996d58ebd2d169f39a1baa23595e4eb8fe7b9ae70e"

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

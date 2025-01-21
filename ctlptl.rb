# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ctlptl < Formula
  desc "Making local Kubernetes clusters easy to set up and tear down"
  homepage "https://ctlptl.dev/"
  version "0.8.38"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.38/ctlptl.0.8.38.mac.x86_64.tar.gz"
      sha256 "1caa2c379a6b0795090ea6badf68966440ae441f4c031c4d5fc271378eaac7d6"

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
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.38/ctlptl.0.8.38.mac.arm64.tar.gz"
      sha256 "ae05d9e7444dc6134a0e706cd5caae2d5ed08a1d1e819fd5c7ccdf4412a54a8b"

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
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.38/ctlptl.0.8.38.linux.x86_64.tar.gz"
        sha256 "a407a14919b37396d42bbd20e4c0cc3b3a00ed3837240f3540da8ce6ddc33803"

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
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.38/ctlptl.0.8.38.linux.arm64.tar.gz"
        sha256 "8bf4fb3568e614a3f58629e4230f7ca8f47e9bcbc10816fe08452ca5db9e5c4e"

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
  end

  test do
    system "#{bin}/ctlptl version"
  end
end

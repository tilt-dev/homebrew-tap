# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ctlptl < Formula
  desc "Making local Kubernetes clusters easy to set up and tear down"
  homepage "https://ctlptl.dev/"
  version "0.8.29"

  on_macos do
    on_intel do
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.29/ctlptl.0.8.29.mac.x86_64.tar.gz"
      sha256 "c36067917d61129cc7354955327d1aaa800bb37885e5a71f36656cefca170aaa"

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
    on_arm do
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.29/ctlptl.0.8.29.mac.arm64.tar.gz"
      sha256 "b472f2baf21ddae622ce084622794b05f91b28148e660da013611ae48a22d60c"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.29/ctlptl.0.8.29.linux.x86_64.tar.gz"
        sha256 "37872b5c6c053d233009f6b77c43c5e9d6f0486ef73ade66e6f9e5259b9ca483"

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
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.29/ctlptl.0.8.29.linux.arm64.tar.gz"
        sha256 "eba82770d32639ff77d9ef90aedd8f90f4a00fcffd3c6a711b9c81052cc9735e"

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

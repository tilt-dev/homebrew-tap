# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ctlptl < Formula
  desc "Making local Kubernetes clusters easy to set up and tear down"
  homepage "https://ctlptl.dev/"
  version "0.8.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.3/ctlptl.0.8.3.mac.arm64.tar.gz"
      sha256 "661982a582accecc9a77a5f4a55c20992fd527d4567d16a2bfdf4b857a919cc4"

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
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.3/ctlptl.0.8.3.mac.x86_64.tar.gz"
      sha256 "05c9ffd8dbdb07461b66f6599ba906784b3fe751f43729fb6b7416cc1f478cf5"

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
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.3/ctlptl.0.8.3.linux.arm64.tar.gz"
      sha256 "5e732585915504133b857afee095d473b4a50c4f935be5dc768f11c801e64db0"

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
      url "https://github.com/tilt-dev/ctlptl/releases/download/v0.8.3/ctlptl.0.8.3.linux.x86_64.tar.gz"
      sha256 "b9e39585f084b27d30c7799b4525fe8c00d60d5e6c9b51b64a10b8ff2b0ce294"

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

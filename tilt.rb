# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "A dev environment as code for microservice apps"
  homepage "https://tilt.dev/"
  version "0.30.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.2/tilt.0.30.2.mac.arm64.tar.gz"
      sha256 "e3516bba9b2ff0b9db9e477d53c8545d2a20959a247435e2146b307c95deaf6a"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.2/tilt.0.30.2.mac.x86_64.tar.gz"
      sha256 "30df3c3b2fd869aef35205defeb4829b629d98400034251dd2bea50dfec0d81c"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.2/tilt.0.30.2.linux.arm.tar.gz"
      sha256 "a93bcc437a0560c122d6da58b9a6d92fe2405aae8d70451757e97d6dfa8390fa"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.2/tilt.0.30.2.linux.arm64.tar.gz"
      sha256 "3241ebb77c3c8500bd81001072146a7b6c7387a757ae98ec1bfb0e64fab288ac"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.2/tilt.0.30.2.linux.x86_64.tar.gz"
      sha256 "6071c8d58099ba0a5902dd35fbcc64dee38bd6dfb7ecf0564babf794f93a4474"

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

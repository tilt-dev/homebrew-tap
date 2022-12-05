# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "A dev environment as code for microservice apps"
  homepage "https://tilt.dev/"
  version "0.30.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.13/tilt.0.30.13.mac.arm64.tar.gz"
      sha256 "14a86eeaf4206d577aceca959c2a6287b219531f3debbec322a6003977a87c59"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.13/tilt.0.30.13.mac.x86_64.tar.gz"
      sha256 "ff27a48127c3163b7b20598064ad0fbb1a5cb613dc727df749c7f139734580a1"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.13/tilt.0.30.13.linux.arm.tar.gz"
      sha256 "6edbd92b035a034f4d48a8ac48327b3a8146f95e91919bd6e3cd6154db69ea3c"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.13/tilt.0.30.13.linux.arm64.tar.gz"
      sha256 "a8add2fbc01aa9c96883bc069d8ae4a85c84b0056d79cfa49ba2e5c028fb3df3"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.30.13/tilt.0.30.13.linux.x86_64.tar.gz"
      sha256 "81e8ab77a2c820e4e9372337b199c2e1b455a7c21c16b1c85cd43cf7f88e7153"

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

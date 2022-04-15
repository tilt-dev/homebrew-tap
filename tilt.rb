# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tilt < Formula
  desc "A dev environment as code for microservice apps"
  homepage "https://tilt.dev/"
  version "0.27.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.2/tilt.0.27.2.mac.arm64.tar.gz"
      sha256 "60e370c343047bf231a15a97e27d9cb0258b2134e458d947c66ccdde9b9d64e3"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.2/tilt.0.27.2.mac.x86_64.tar.gz"
      sha256 "331dda34c92e8c1b28edec3eee1630d5468d3fc86ce243562e27712e5b3a66c6"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.2/tilt.0.27.2.linux.arm.tar.gz"
      sha256 "d1781a4dc7e1368fdf8bba6d118c93e6e4d70ee55eec957026d4bc9f878cc28f"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.2/tilt.0.27.2.linux.arm64.tar.gz"
      sha256 "8ae7ae090b80b6ddc43e26e95967054ed65084ab8f3975b766f8236674082889"

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
      url "https://github.com/tilt-dev/tilt/releases/download/v0.27.2/tilt.0.27.2.linux.x86_64.tar.gz"
      sha256 "3e4eba61f03fdfeb18a88c053b18a6355bcbe3cfe0d1ebe06d448846b2654b90"

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

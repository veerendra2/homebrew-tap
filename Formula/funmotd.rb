# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Funmotd < Formula
  desc "TV Shows and Movies Quotes MOTD for Shell 😎"
  homepage "https://github.com/veerendra2/funmotd"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/veerendra2/funmotd/releases/download/v0.0.1/funmotd_Darwin_x86_64.zip"
      sha256 "2efc0c217ba3eb60db78e11384290d8770e40f7e66a7a180b6072282f5dae995"

      def install
        bin.install "funmotd"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/veerendra2/funmotd/releases/download/v0.0.1/funmotd_Darwin_arm64.zip"
      sha256 "ecdbad04d625420fa27651837217a596d1afabbfff36c1dcfed7a59eb7d88341"

      def install
        bin.install "funmotd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/veerendra2/funmotd/releases/download/v0.0.1/funmotd_Linux_x86_64.zip"
        sha256 "9adf1b6cce547817fcd8bfcebf477ab3db38f864ebab464a9a388dd051eb40d6"

        def install
          bin.install "funmotd"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/veerendra2/funmotd/releases/download/v0.0.1/funmotd_Linux_arm64.zip"
        sha256 "0e5f695260410609643913c147150512a99e14d40c692ba593102ca82f9f709c"

        def install
          bin.install "funmotd"
        end
      end
    end
  end

  def caveats
    <<~EOS
      ℹ️ To display a random quote when the terminal opens, add it to your shell 💡 Example for Bash: echo "funmotd" >> ~/.bashrc
    EOS
  end
end

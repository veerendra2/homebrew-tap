# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Quotations < Formula
  desc "A tool to display random inspirational quotes and famous dialogues from movies and TV shows on your CLI. 😎"
  homepage "https://github.com/veerendra2/quotations"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/veerendra2/quotations/releases/download/v1.0.1/quotations_Darwin_x86_64.zip"
      sha256 "712845f6ddbed2b407dd2abcbd3d0c1327d682771e70228398bdc13a6dea5076"

      def install
        bin.install "quotations"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/veerendra2/quotations/releases/download/v1.0.1/quotations_Darwin_arm64.zip"
      sha256 "25349188ed150c4cdc073b3eee24b51c55201d6a0d52636765ecb8e457cddb40"

      def install
        bin.install "quotations"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/veerendra2/quotations/releases/download/v1.0.1/quotations_Linux_x86_64.zip"
        sha256 "b241010f1709b28e13dd68eee90d179f97c67e0c8ddc2b719f4efbcf86e81f41"

        def install
          bin.install "quotations"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/veerendra2/quotations/releases/download/v1.0.1/quotations_Linux_arm64.zip"
        sha256 "8804e17ac2262528822da5c91212707baf4d503427adc6b76621ede1495150d3"

        def install
          bin.install "quotations"
        end
      end
    end
  end

  def caveats
    <<~EOS
      ℹ️ To display a random quote when terminal opens, add it to your shell
      💡 Example for Bash:
      echo "quotations" >> ~/.bashrc
    EOS
  end
end

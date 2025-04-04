# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Quotations < Formula
  desc "A tool to display random inspirational quotes and famous dialogues from movies and TV shows on your CLI. 😎"
  homepage "https://github.com/veerendra2/quotations"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/veerendra2/quotations/releases/download/v1.0.3/quotations_Darwin_x86_64.zip"
      sha256 "2cd5aee8f40f109251c2a367fbf26a5c93b3c6592c9db673a988fa633c88b75f"

      def install
        bin.install "quotations"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/veerendra2/quotations/releases/download/v1.0.3/quotations_Darwin_arm64.zip"
      sha256 "ab9aba24541a0b7af9ae97d068288569e69f180fed3ee3424983448a904249f2"

      def install
        bin.install "quotations"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/veerendra2/quotations/releases/download/v1.0.3/quotations_Linux_x86_64.zip"
        sha256 "968ab1395f458bf3855b56f7d5f7da02a399b7128f5bd2cbe738bdb939078fca"

        def install
          bin.install "quotations"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/veerendra2/quotations/releases/download/v1.0.3/quotations_Linux_arm64.zip"
        sha256 "477e46839c36f2b42763d416289b40a85b678256f5b42b0285a8a76cdbb13d28"

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

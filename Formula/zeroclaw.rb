# typed: false
# frozen_string_literal: true

class Zeroclaw < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/bighorse/zeroclaw"
  version "1.1.13"
  license "MIT OR Apache-2.0"

  # Pre-built binary for Apple Silicon (aarch64-apple-darwin).
  # Works with both /opt/homebrew (native ARM) and /usr/local Homebrew under Rosetta.
  url "https://github.com/bighorse/zeroclaw/releases/download/v1.1.13/zeroclaw-aarch64-apple-darwin.tar.gz"
  sha256 "be6a9057803dc0c24111c975516ca08dfab1d3639b53289ceec4b58a2778b27f"

  def install
    bin.install "zeroclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zeroclaw --version")
  end
end

# typed: false
# frozen_string_literal: true

class Zeroclaw < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/bighorse/zeroclaw"
  version "1.1.17"
  license "MIT OR Apache-2.0"

  # Pre-built binary for Apple Silicon (aarch64-apple-darwin).
  # Works with both /opt/homebrew (native ARM) and /usr/local Homebrew under Rosetta.
  url "https://github.com/bighorse/zeroclaw/releases/download/v1.1.17/zeroclaw-aarch64-apple-darwin.tar.gz"
  sha256 "8086bf872be2f0eb9a9eb13f4d5d734bcecd7dad3f9b2d49e14e2853c701422c"

  def install
    bin.install "zeroclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zeroclaw --version")
  end
end

# typed: false
# frozen_string_literal: true

class Zeroclaw < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/bighorse/zeroclaw"
  version "1.1.19"
  license "MIT OR Apache-2.0"

  # Pre-built binary for Apple Silicon (aarch64-apple-darwin).
  # Works with both /opt/homebrew (native ARM) and /usr/local Homebrew under Rosetta.
  url "https://github.com/bighorse/zeroclaw/releases/download/v1.1.19/zeroclaw-aarch64-apple-darwin.tar.gz"
  sha256 "5907cfc5979e5d4b43e1d6163377a454aa397daf94514263ca311a1099ef1366"

  def install
    bin.install "zeroclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zeroclaw --version")
  end
end

# typed: false
# frozen_string_literal: true

class Zeroclaw < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/bighorse/zeroclaw"
  version "2.0.1"
  license "MIT OR Apache-2.0"

  # Pre-built binary for Apple Silicon (aarch64-apple-darwin).
  # Works with both /opt/homebrew (native ARM) and /usr/local Homebrew under Rosetta.
  url "https://github.com/bighorse/zeroclaw/releases/download/v2.0.1/zeroclaw-aarch64-apple-darwin.tar.gz"
  sha256 "0fb33a04ae9e90f18a3978fa20cc8ab006b722fdd09707a7b72073bbd38f2864"

  def install
    bin.install "zeroclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zeroclaw --version")
  end
end

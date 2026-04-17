# typed: false
# frozen_string_literal: true

class Zeroclaw < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/bighorse/zeroclaw"
  version "1.2.1"
  license "MIT OR Apache-2.0"

  # Pre-built binary for Apple Silicon (aarch64-apple-darwin).
  # Works with both /opt/homebrew (native ARM) and /usr/local Homebrew under Rosetta.
  url "https://github.com/bighorse/zeroclaw/releases/download/v1.2.1/zeroclaw-aarch64-apple-darwin.tar.gz"
  sha256 "5e5ca611495275c586e1276aefde06632ff55da09201756959543ce4b9a93d1e"

  def install
    bin.install "zeroclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zeroclaw --version")
  end
end

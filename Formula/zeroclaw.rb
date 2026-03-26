# typed: false
# frozen_string_literal: true

class Zeroclaw < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/bighorse/zeroclaw"
  version "0.1.10"
  license "MIT OR Apache-2.0"

  # Pre-built binary is available for Apple Silicon only.
  # Intel Mac (x86_64) is not supported — use: cargo install zeroclaw
  url "https://github.com/bighorse/zeroclaw/releases/download/v0.1.10/zeroclaw-aarch64-apple-darwin.tar.gz"
  sha256 "f26b4671da64ffd211cd6b8dbc718b9f4528e0626a8030e1e6405def9490db27"

  def install
    if Hardware::CPU.intel?
      odie "zeroclaw pre-built binaries require Apple Silicon (M1/M2/M3/M4).\n"            "Intel Mac is not supported. Build from source: cargo install zeroclaw"
    end
    bin.install "zeroclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zeroclaw --version")
  end
end

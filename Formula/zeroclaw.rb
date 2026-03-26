class Zeroclaw < Formula
  desc "Zero overhead. Zero compromise. 100% Rust. The fastest, smallest AI assistant."
  homepage "https://github.com/bighorse/zeroclaw"
  version "0.1.10"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/bighorse/zeroclaw/releases/download/v0.1.10/zeroclaw-aarch64-apple-darwin.tar.gz"
      sha256 "6a7e72b98918b783e9351e07fb1d7ea52ec8f6964b97c58ba8919b0547949503"
    end
  end

  def install
    bin.install "zeroclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zeroclaw --version")
  end
end

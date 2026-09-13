class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 37b4c484b2a040454b96f476de17b21d1103c472
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.23/codex-router-v0.1.23-aarch64-apple-darwin.tar.gz"
  sha256 "d0f27f192078bcf02bc79cfc3db9a0bcf20c4d5064bf2203c96aef12b172a089"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

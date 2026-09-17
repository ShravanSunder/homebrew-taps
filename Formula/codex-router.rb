class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 788be5241c1529c4d97968746a5076a4e04ee5fb
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.28/codex-router-v0.1.28-aarch64-apple-darwin.tar.gz"
  sha256 "3089f1a2b620a3d43dca6aa1ff88b9096348031662f97cd4d89613f249adf365"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
    bin.install "agent-session"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

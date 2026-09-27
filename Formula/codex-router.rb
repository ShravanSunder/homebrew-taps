class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: a8908c0900ea9bb3663d12c1109ef40a483b2d5f
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.40/codex-router-v0.1.40-aarch64-apple-darwin.tar.gz"
  sha256 "988c42eb5d558e8c712f81b4c1d32c175ddd35c4ae0a042fe2f18643fff9b3ac"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
    bin.install "agent-sessions"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

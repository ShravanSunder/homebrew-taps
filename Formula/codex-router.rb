class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 382ab0fcad5debe027139ac6feb23d06704fcca0
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.46/codex-router-v0.1.46-aarch64-apple-darwin.tar.gz"
  sha256 "13a67623a8e83263efe8fb94a922b8c84066ce2e49aa038a98f37fc694011914"
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

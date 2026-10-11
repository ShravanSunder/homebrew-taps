class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 383041c7d787e5e90f7b3b1320de7fca48bcdb88
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.93/codex-router-v0.1.93-aarch64-apple-darwin.tar.gz"
  sha256 "862292bc02e357816780fe02e991ccb088cf6773cb783ccd1dce9a3b15f409f1"
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

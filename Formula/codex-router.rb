class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 7af23abe970a6d2f7d503be452730fb30d7bb0c9
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.118/codex-router-v0.1.118-aarch64-apple-darwin.tar.gz"
  sha256 "3bc1fa8ec616322f69d7e8fa7b77a7e72205d821fc29bd34a12f7e0b40c361b2"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
    bin.install "agent-sessions"
    bin.install "codex-router-board-upgrade"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: fb3cf6b5a4624ce725cb190d25099b850f95ba88
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.121/codex-router-v0.1.121-aarch64-apple-darwin.tar.gz"
  sha256 "2e9b8f0ea7c085acdf62fe7cc61362e06642b36ba5b5d8dbd3420ec6d4bac8ed"
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

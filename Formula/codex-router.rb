class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 4153c0c8fa48d86ae7de9430f4f51a06a1e42779
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.107/codex-router-v0.1.107-aarch64-apple-darwin.tar.gz"
  sha256 "050fa59cd315c2a0eaebdd585a20d77033e1502774d42812f715fd6fd4de31cf"
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

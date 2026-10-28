class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 9f7c04049495a03b62dd2ecfb7b95b2512c9981a
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.111/codex-router-v0.1.111-aarch64-apple-darwin.tar.gz"
  sha256 "0da8fab207eaf5d7fe9a74447d894f4a5855d97e96f50d72a9f21648fc2d78c5"
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

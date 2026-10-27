class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 6388b9739c2b95d3cd53d64e6c640c6c1794f929
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.105/codex-router-v0.1.105-aarch64-apple-darwin.tar.gz"
  sha256 "b4839dde66292014e7acddf38799a7874340c57e756cc1d37a2c2c9c3a3e6ca7"
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

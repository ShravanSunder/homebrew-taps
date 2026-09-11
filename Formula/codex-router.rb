class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 68ceef74a1e3af18c11a8e142d5fa52e4f2f43e5
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.20/codex-router-v0.1.20-aarch64-apple-darwin.tar.gz"
  sha256 "6b7454f6742b86fb08a1663d8559acdbffee25cc2d674c49334a6aa4444b1764"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-sessions"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

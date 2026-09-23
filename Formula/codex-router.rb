class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: e2dcb8d66b5dd411eaffdd4d3cd4e4d28547eebf
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.37/codex-router-v0.1.37-aarch64-apple-darwin.tar.gz"
  sha256 "f107e755dbba0e570db9c5ab46985b7446248a34784a7f45d1906f17d882ebbc"
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

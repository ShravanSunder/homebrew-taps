class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 335cfc5f1aede5d65978ef2a35dfc5a33b25dd27
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.38/codex-router-v0.1.38-aarch64-apple-darwin.tar.gz"
  sha256 "72941d75b475db7ab9ab189f65bf56e89cbe94b7218984fce211d4f09e895a1f"
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

class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: ffced1c1c3c84e0ca41701fb9eb4326acea2451e
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.96/codex-router-v0.1.96-aarch64-apple-darwin.tar.gz"
  sha256 "f9a2cb38a8e3ac0ea761d0ab1f7182a339dfd296a1b3b69a353540ab844ab97f"
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

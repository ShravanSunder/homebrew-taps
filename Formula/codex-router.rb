class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: b21e5b2a73d0e086048be2424a5bd393220d25c5
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.76/codex-router-v0.1.76-aarch64-apple-darwin.tar.gz"
  sha256 "bef25bca6035fc79ee687599a042967e80f5782d8f94485a057d6dd7a0e28739"
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

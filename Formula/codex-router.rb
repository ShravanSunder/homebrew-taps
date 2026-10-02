class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 7a8be496964f056639d378cf5dad556c3c49f834
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.58/codex-router-v0.1.58-aarch64-apple-darwin.tar.gz"
  sha256 "07c36114ab6a9a9626bc5f4e9a295db91fb79c4e99e1131248231155d77c1928"
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

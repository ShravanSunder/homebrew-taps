class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 6ce51ab37a63aeaa7b71f1459ebaab571639c7cb
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.51/codex-router-v0.1.51-aarch64-apple-darwin.tar.gz"
  sha256 "13ac6e6d8ea49764ea24cbf14d089da68376ae16c14a4d3046f1fa59089aa460"
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

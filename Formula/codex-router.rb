class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 2ec6a67c19c6917140b8c8a2d562e87333cf9b08
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.100/codex-router-v0.1.100-aarch64-apple-darwin.tar.gz"
  sha256 "b0ae5bb0f7c166c57ea646e4925b3e608225e2c6aed52a4fadcf674c458e4306"
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

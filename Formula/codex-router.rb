class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 782a72b2a0fb1bfe299b5e87810d29e34dbae511
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.18/codex-router-v0.1.18-aarch64-apple-darwin.tar.gz"
  sha256 "bea585d6582d73aba47149c3eb48da6850b9e5e74fd9c592319efeef6396b6c1"
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

class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: b0034051037d99d24ed3e9a2721ff133d7636e5c
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.21/codex-router-v0.1.21-aarch64-apple-darwin.tar.gz"
  sha256 "3a1edf3ba9fd589e747b3f8e1476deb94eb08d381fc417d9dd99a0299d16f7cf"
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

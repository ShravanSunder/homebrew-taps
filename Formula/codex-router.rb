class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 2011fa9b1bf45c73c5da20b0c82daa801ee175c9
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.79/codex-router-v0.1.79-aarch64-apple-darwin.tar.gz"
  sha256 "d6afe39e83196d46829d9fae7b75eeffeba2fd1360010ce998cf9e74f47864b2"
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

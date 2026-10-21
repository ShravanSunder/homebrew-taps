class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 34f6c7f8c2e9635934b263d24cd6d914b9c26f1f
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.98/codex-router-v0.1.98-aarch64-apple-darwin.tar.gz"
  sha256 "4044d15aaefc0f28c5b9fc4d9a70ec97a675e731cf8c757743fec9a497269663"
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

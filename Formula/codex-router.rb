class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 4cb79ed93538a0a9dc673af39a625604fd2d6d90
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.57/codex-router-v0.1.57-aarch64-apple-darwin.tar.gz"
  sha256 "b40fffee2f2690f37794293583d6772218c79fd56df6292a15d89f14a1772184"
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

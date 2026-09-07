class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: de3a149f16dfe53e8c6ce1936f6eb6ccc9982f8f
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.15/codex-router-v0.1.15-aarch64-apple-darwin.tar.gz"
  sha256 "11e07bcf347cdbb4417ea394e5e16014b6f10984b40bc3123b24c888f10d4819"
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

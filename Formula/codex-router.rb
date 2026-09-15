class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 33e1223727a66c8baca8b64fccab9fb31b66efca
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.27/codex-router-v0.1.27-aarch64-apple-darwin.tar.gz"
  sha256 "18ec4ea8e38c858d60cb7ebf3afbac14ef73aa82dbc5bb60a9ff600fb65b4027"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
    bin.install "agent-session"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

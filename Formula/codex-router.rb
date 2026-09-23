class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: d2254ed13a37fadf33d36cb7fed605ea8b88af56
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.36/codex-router-v0.1.36-aarch64-apple-darwin.tar.gz"
  sha256 "ad90fde669ac6417bfbce2e0abaef00896f17041a43d7b3f7a60e3369c0f3dbe"
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

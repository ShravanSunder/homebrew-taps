class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 187de9402eeeeca366233ef0d5cfab20f06bad05
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.97/codex-router-v0.1.97-aarch64-apple-darwin.tar.gz"
  sha256 "8807df0d795d42efa8c5b0cf7731fdc6524fe99d791a6096540547a1a23c6e96"
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

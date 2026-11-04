class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: cbf56bad640ae981900c646ff2ae0b64aaaebd3b
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.125/codex-router-v0.1.125-aarch64-apple-darwin.tar.gz"
  sha256 "57639e93b1726b9d86e7e8852e4543f910c672be4df07aadd40175b4314db5d1"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
    bin.install "agent-sessions"
    bin.install "codex-router-board-upgrade"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

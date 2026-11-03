class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 325e1b0f892d56771d72267aa22ffdedfb088c10
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.123/codex-router-v0.1.123-aarch64-apple-darwin.tar.gz"
  sha256 "93b472c9426e7e806ac87cdd7d879c5224e0433b371471f71082c6614ee2cd01"
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

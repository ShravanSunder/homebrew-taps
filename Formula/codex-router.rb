class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 303bda3412dfb44b3e271962060ed923e58c9583
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.108/codex-router-v0.1.108-aarch64-apple-darwin.tar.gz"
  sha256 "52107f8a4fb0bc12e6d891b364e8a17b3c28465cff5b5840e6f18381e36a4a09"
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

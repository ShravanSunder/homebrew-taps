class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 263e0d320d2bc28f122932c1ed7d2f93d061a463
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.106/codex-router-v0.1.106-aarch64-apple-darwin.tar.gz"
  sha256 "4dd5d4a5c4bda4aa352dc3121ed8491d814ad7a9a04ed3695b15b5e9e6b9b412"
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

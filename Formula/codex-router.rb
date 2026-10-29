class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 881f778c77b4d5532ef1be32f0bd2f44daaf73f5
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.116/codex-router-v0.1.116-aarch64-apple-darwin.tar.gz"
  sha256 "01b342a8586e774e866774f5ad9fc2daefd4427682d7ad1317a3ef9b758b7a29"
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

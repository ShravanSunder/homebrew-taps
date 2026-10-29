class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 8ad93722ce6b923be32e422822ad63116a042106
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.115/codex-router-v0.1.115-aarch64-apple-darwin.tar.gz"
  sha256 "ccbd65d92bc8c98b313ebd1eaea959644ec1d6a02afda3c4bd176d017c5508c9"
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

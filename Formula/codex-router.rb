class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: e7552ae4e2c809b3dae9157f0addbeb68c5b5e71
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.119/codex-router-v0.1.119-aarch64-apple-darwin.tar.gz"
  sha256 "564f3deb9c3694da94b91073ae9565b79413c7b8f735a084f5d0c71d8360bda1"
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

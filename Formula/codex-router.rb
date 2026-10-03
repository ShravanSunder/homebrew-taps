class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 609a0b02780d8cff8aa6f0be367d37370ef9aa92
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.62/codex-router-v0.1.62-aarch64-apple-darwin.tar.gz"
  sha256 "0e77e1e30fa6b3d824c0514e53941b87c923a3b8f3d71ad14997ed10760175e5"
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

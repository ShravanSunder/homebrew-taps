class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: cb01dffd3e60b29e814495fd676844690b07e313
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.117/codex-router-v0.1.117-aarch64-apple-darwin.tar.gz"
  sha256 "f642643b73e133076a5138b69a4f892b8561dce6ea2238e6446c16523b5b5266"
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

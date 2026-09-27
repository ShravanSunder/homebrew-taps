class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 55384e84bf9b7337655164020bf1d3bdf2587999
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.45/codex-router-v0.1.45-aarch64-apple-darwin.tar.gz"
  sha256 "acb531bfde5eda620bda25059bf4187f28b6bdc05440962250e367dc8bdbdf1d"
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

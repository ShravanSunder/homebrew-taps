class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: a769c33fe5c3159b5567760127fa372b03a51c17
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.22/codex-router-v0.1.22-aarch64-apple-darwin.tar.gz"
  sha256 "14bdb7e4f81f29c20be3f5f48007623d735b2b2ace1c45425531032b8a791405"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-sessions"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

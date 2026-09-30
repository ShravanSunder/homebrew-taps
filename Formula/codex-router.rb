class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 2460aa006fccc01e417e7ecd87e7806349f19614
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.50/codex-router-v0.1.50-aarch64-apple-darwin.tar.gz"
  sha256 "0aa9f0eb5bece530e1956b56c00663f8cb4f83bc414027994c9631c3d70a1784"
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

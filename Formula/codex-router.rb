class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: d7eaac23fc8bc6f139588d133d9e606e2bee8a09
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.7/codex-router-v0.1.7-aarch64-apple-darwin.tar.gz"
  sha256 "302ca63b719fa97b45942080209dd6290d64efe682ace8078f6f90dda2056cd1"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

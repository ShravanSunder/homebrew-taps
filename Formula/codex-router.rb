class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: b5ad1c46b9f9ae72607fadcbedc0637dc045c128
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.60/codex-router-v0.1.60-aarch64-apple-darwin.tar.gz"
  sha256 "18e1d153234ec20b4ea9e226d4657e885e4e4552c265b4208196654c0337ac95"
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

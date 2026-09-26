class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: c5395c15044909d119fbb071480eceef71220db6
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.39/codex-router-v0.1.39-aarch64-apple-darwin.tar.gz"
  sha256 "08ca7eb7bcaddec37c6af327f0241f0aad2a5881620c80f562b40ca5ae9a6358"
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

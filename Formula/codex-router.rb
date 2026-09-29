class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: c16716cb7d3a4d956c860751d446b74c1d822688
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.48/codex-router-v0.1.48-aarch64-apple-darwin.tar.gz"
  sha256 "e88857777c688201c366570ee3fd82071bce41250155de2907534abcea034cfc"
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

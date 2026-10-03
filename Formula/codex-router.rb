class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 7a8cbd8943e6fb2dac23bcde7069203925003918
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.63/codex-router-v0.1.63-aarch64-apple-darwin.tar.gz"
  sha256 "c05b25573c37083712f811992223a626d879d1f69f50ec8d3467a773ca54b0f1"
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

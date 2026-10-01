class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: dd652d8aa883fc6abc795f3c2622b68fe9433a07
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.56/codex-router-v0.1.56-aarch64-apple-darwin.tar.gz"
  sha256 "a148ee37031ca94e99b894c9d673bea9237b15cf76d006a1d227a52b31123e94"
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

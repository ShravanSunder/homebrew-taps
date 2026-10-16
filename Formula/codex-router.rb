class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 6e188484fd305fc022730ae6bf4c7db0eca7788a
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.95/codex-router-v0.1.95-aarch64-apple-darwin.tar.gz"
  sha256 "ee2093e574191e5606325607e65d1f0a080d09feacc3190c687d0a1f79612a3c"
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

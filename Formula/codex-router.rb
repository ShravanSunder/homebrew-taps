class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 5f6df3aaaa14fe93f238c23ef9c86811c3a11fc9
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.49/codex-router-v0.1.49-aarch64-apple-darwin.tar.gz"
  sha256 "d4d219d7f6d5e6febb19081fb825601b7b2d9b255817908425f34c3e1e6697dd"
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

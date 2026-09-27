class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 2cade10a7e1cbf005b14f33c8fd005f92fb49178
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.43/codex-router-v0.1.43-aarch64-apple-darwin.tar.gz"
  sha256 "1c75111da61cb233bb769395dd1472341b43718b0d29ba79e50614c11f077ef8"
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

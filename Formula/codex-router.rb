class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: e6155a433d5beb88249ef964295daa4f15e3e950
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.53/codex-router-v0.1.53-aarch64-apple-darwin.tar.gz"
  sha256 "1b1277f0272fc3baf86623dfb00981d701a56a11ee44e1ea84dde447a61b56ea"
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

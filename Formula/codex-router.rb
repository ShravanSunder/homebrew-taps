class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 1d8b8b5ef343821d397630daae51b2fc9086917f
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.41/codex-router-v0.1.41-aarch64-apple-darwin.tar.gz"
  sha256 "2c2cd0b158e9f495cb18dc99b41b4b4abd541e6edd4d0cda42658b834a9b5699"
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

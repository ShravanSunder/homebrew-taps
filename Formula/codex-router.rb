class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 5de38d68c4f092fdc49f404dd7fdb4dbf8ef3b37
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.61/codex-router-v0.1.61-aarch64-apple-darwin.tar.gz"
  sha256 "40902c52741a41207cc48ba71f0911929d902e3cf878c3aa3fcff145d7011dfc"
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

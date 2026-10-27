class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 19dc3899c72990fb62ff15fbc3972140ccbc7d37
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.104/codex-router-v0.1.104-aarch64-apple-darwin.tar.gz"
  sha256 "4c8b788df8ff560d4940aa02a7cd9f8737be35b1925a8346cc3869cda45d8881"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
    bin.install "agent-sessions"
    bin.install "codex-router-board-upgrade"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

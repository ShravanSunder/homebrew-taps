class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: dea647b545f4ed5c9cb22565856c196a3c36ac98
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.59/codex-router-v0.1.59-aarch64-apple-darwin.tar.gz"
  sha256 "5367048f73aeaffff43036af4c62cfe0b59dc0679f7cd52375fee0e31a7ce93e"
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

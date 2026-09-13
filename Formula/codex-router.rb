class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 6af9ddfe39955a2cea4c43e400e92d3104a6b0ee
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.24/codex-router-v0.1.24-aarch64-apple-darwin.tar.gz"
  sha256 "3896439076426e28c7d55983d5eb156a2106862fbfb3ab8dd247efceb6d9e932"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

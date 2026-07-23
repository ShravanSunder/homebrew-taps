class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 77c32a920f8c547cd05f19558d61bd94c0ad27c5
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.2/codex-router-v0.1.2-aarch64-apple-darwin.tar.gz"
  sha256 "678104c9f60acf3cf1c61e68be580e9f3fc7793d52b06dbce92f03ef48af37e1"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

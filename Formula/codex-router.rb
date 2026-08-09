class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: e848f1bde028ca0054342dbbc04e3ff6ae4f6cef
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.4/codex-router-v0.1.4-aarch64-apple-darwin.tar.gz"
  sha256 "df3d151a1f3b7157407aa9fe455d2b89ab8c885b6d78a4190ef05e3cdd183f2e"
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

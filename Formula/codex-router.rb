class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: e629f6cba3c3026ec177db3efc23a2fa20c5c28e
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.6/codex-router-v0.1.6-aarch64-apple-darwin.tar.gz"
  sha256 "f9b459d2381dd0f132f288b243cbbcc5a83b0f2d8f0ecd6c00daa89ed3bdd370"
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

class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.2/codex-router-v0.1.2-aarch64-apple-darwin.tar.gz"
  sha256 "a5c2eecee6d164fb468ce05c12a6caf7081aa48a9ffca5aed77c16363d8367b9"
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

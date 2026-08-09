class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 0b6e5561a3d6b87d66a57fdecb8a465e4e9a06d6
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.3/codex-router-v0.1.3-aarch64-apple-darwin.tar.gz"
  sha256 "39005f9dd4fe34ca6524bfcf2ed7cebf0b52f3f0f119c3ecad7eeba766ad37ad"
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

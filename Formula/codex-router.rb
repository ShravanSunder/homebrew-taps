class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: b4b5a89aac3a11a4cbcfde352360528a056a083a
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.13/codex-router-v0.1.13-aarch64-apple-darwin.tar.gz"
  sha256 "a1ee684759ea59c49273c05d0bf5f9740b2a647b76e1a9a950353ae164c97d60"
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

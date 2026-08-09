class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 0031e62fef660429a363c0c39010941e0feced94
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.5/codex-router-v0.1.5-aarch64-apple-darwin.tar.gz"
  sha256 "7e6c94486ea29728973a7f70daa07b5db52512d3d35daa39e73a4994b3c0ad5f"
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

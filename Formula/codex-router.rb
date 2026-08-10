class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 466e7ec46ef8ad4dfc2fc0919b13d126b19d641a
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.8/codex-router-v0.1.8-aarch64-apple-darwin.tar.gz"
  sha256 "545a8832238413104672a80703692db0891c91346fa5a5aab4e670db435c4589"
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

class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: afc4bcaad4d44b24d619c6302748dd717a327818
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.14/codex-router-v0.1.14-aarch64-apple-darwin.tar.gz"
  sha256 "0498cec1550a10325286912ff65f3105a554f8058d6fbcbd1e299c394d923490"
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

class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: b488149774bac3f66828d5b48e7860ab9e5e8447
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.103/codex-router-v0.1.103-aarch64-apple-darwin.tar.gz"
  sha256 "efeb37d38365203c779a6506a535ec2d7490946a7ba4d542131fd899563d402c"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
    bin.install "agent-sessions"
    bin.install "codex-router-board-upgrade"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: c0e460871f085ba5928b07da9695f7480ba79080
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.81/codex-router-v0.1.81-aarch64-apple-darwin.tar.gz"
  sha256 "2c5b917bb8df6f868b5cbee6c77ab318f83b6a2fb3c1e962880b0ded63b4d566"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "codex-router"
    bin.install "agent-collaboration"
    bin.install "agent-sessions"
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

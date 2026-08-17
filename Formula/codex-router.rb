class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/ShravanSunder/codex-router"
  # Source commit: 1f4c4099041fdc772ddcec8c70c88de24b75b3db
  url "https://github.com/ShravanSunder/codex-router/releases/download/v0.1.12/codex-router-v0.1.12-aarch64-apple-darwin.tar.gz"
  sha256 "4b51030e4cdd93eb3ef4f2c3ddf1c71900449e51a77fac4bf4b6822cc58402bf"
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

class CodexRouter < Formula
  desc "Local account and quota router for Codex CLI"
  homepage "https://github.com/shravan-agent/codex-router"
  url "https://github.com/shravan-agent/codex-router/archive/77c32a920f8c547cd05f19558d61bd94c0ad27c5.tar.gz"
  version "0.1.2"
  sha256 "e387270843f14aceef696d330adf1902827cdc968c86dd8fe6e0f7318a00b942"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/codex-router-cli")
  end

  test do
    assert_match "codex-router #{version}", shell_output("#{bin}/codex-router --version")
  end
end

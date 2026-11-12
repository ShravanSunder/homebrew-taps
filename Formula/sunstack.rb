class Sunstack < Formula
  desc "Lint repository documents and execute native Sunstack checks"
  homepage "https://github.com/ShravanSunder/sunstack-tools"
  version "0.11.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.11.1/sunstack-aarch64-apple-darwin.tar.gz"
      sha256 "6b3b99577fa7ebe77bb2f6ed74050d3a5f5d9a271d3ddf3f3d6e283e13b14e9a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.11.1/sunstack-x86_64-apple-darwin.tar.gz"
      sha256 "ff11eb90931c5cd0e903ea06da305789a9eed2b678678b697b557816d0cb313a"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.11.1/sunstack-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6b1234c646e359f8746d909f2e848fccdc198a335a97e872c836d53aefdfe74f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.11.1/sunstack-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6c6bf0a45375a44e1d3e4407828b6210ea278348e2134242335c25577de8c73"
    end
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":               {},
    "aarch64-unknown-linux-gnu":          {},
    "aarch64-unknown-linux-musl-dynamic": {},
    "aarch64-unknown-linux-musl-static":  {},
    "x86_64-apple-darwin":                {},
    "x86_64-unknown-linux-gnu":           {},
    "x86_64-unknown-linux-musl-dynamic":  {},
    "x86_64-unknown-linux-musl-static":   {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "sunstack"
    end
    if OS.mac? && Hardware::CPU.intel?
      bin.install "sunstack"
    end
    if OS.linux? && Hardware::CPU.arm?
      bin.install "sunstack"
    end
    if OS.linux? && Hardware::CPU.intel?
      bin.install "sunstack"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end

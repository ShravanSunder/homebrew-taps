class Sunstack < Formula
  desc "Lint repository documents and execute native Sunstack checks"
  homepage "https://github.com/ShravanSunder/sunstack-tools"
  version "0.15.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.15.0/sunstack-aarch64-apple-darwin.tar.gz"
      sha256 "774d9eacaba791370f3009a8d6c598c3a3812797a6b4a48bcabe4da7e1fadd32"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.15.0/sunstack-x86_64-apple-darwin.tar.gz"
      sha256 "528edf81fcd99e7f5b1d33ec9c2f8255d429c771d632c6974fab39c5196c7cdd"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.15.0/sunstack-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10d6e60639346237b865137887d391a181b4d0e40c73c6f69053ceecd42ed837"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.15.0/sunstack-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d593694a0c826d7ae581bcd45665edf38c6aa325b8e0b471a95dbffa55376ff3"
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

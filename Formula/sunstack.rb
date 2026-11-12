class Sunstack < Formula
  desc "Lint repository documents and execute native Sunstack checks"
  homepage "https://github.com/ShravanSunder/sunstack-tools"
  version "0.14.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.14.0/sunstack-aarch64-apple-darwin.tar.gz"
      sha256 "98fb9e7c7992bf91d7a7e5aed93f2921e98469bf91d8f75ace18489bed450550"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.14.0/sunstack-x86_64-apple-darwin.tar.gz"
      sha256 "8f6571b20c03bd65cf1eb1cf139d166ccefe51b927ee0338ec3695029f7ae20e"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.14.0/sunstack-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c638273a594a32546c98386f54ce0ca0f156806eab139dc5e83f501fbb002ba"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.14.0/sunstack-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4bd11915f8db934f6875bfe2be60bf58ea57b68580eaffc0e7040783ee255ac"
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

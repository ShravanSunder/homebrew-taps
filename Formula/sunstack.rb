class Sunstack < Formula
  desc "Lint repository documents and execute native Sunstack checks"
  homepage "https://github.com/ShravanSunder/sunstack-tools"
  version "0.5.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.5.0/sunstack-aarch64-apple-darwin.tar.gz"
      sha256 "a7e19978f56e3dabc107c03fa1355b206608908b39fc0b05a65448c16c540445"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.5.0/sunstack-x86_64-apple-darwin.tar.gz"
      sha256 "2cabc753a0d595cdb88769ad56ce37a19a73ed19a448a329a43469dc806b7872"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.5.0/sunstack-aarch64-unknown-linux-musl.tar.gz"
      sha256 "47d9d7629d093144df599dbf38a77c486b119b9daf3f159aea165120e2866a1c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.5.0/sunstack-x86_64-unknown-linux-musl.tar.gz"
      sha256 "465a07b5444701c2852b727516eb989d56ede6eb2c48f531c6bc58e3b47adc0f"
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

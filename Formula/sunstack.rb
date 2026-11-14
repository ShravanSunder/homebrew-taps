class Sunstack < Formula
  desc "Lint repository documents and execute native Sunstack checks"
  homepage "https://github.com/ShravanSunder/sunstack-tools"
  version "0.21.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.21.1/sunstack-aarch64-apple-darwin.tar.gz"
      sha256 "b783fa2f8b213dd47a1e711b107e1b67d643ff3fd93dfc96d99e68bd3bc81a80"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.21.1/sunstack-x86_64-apple-darwin.tar.gz"
      sha256 "4701341465d5bafec4af24cea88879436b9fdb608bf1bf5f666be449d8ba9ff2"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.21.1/sunstack-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f46c707e73c85c991af631d3e8cccf3ff86f53745e8c65cf7066e33ea4485ee"
    end
    if Hardware::CPU.intel?
      url "https://github.com/ShravanSunder/sunstack-tools/releases/download/v0.21.1/sunstack-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee2074ef028e7f7eca65d2d0b981a689c2e952376f438499851527908a9a0e5b"
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

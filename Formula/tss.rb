class Tss < Formula
  desc "Trust-first token saving CLI for agent terminal output"
  homepage "https://github.com/uditgoenka/tss"
  url "https://github.com/uditgoenka/tss/archive/refs/tags/v0.1.01.tar.gz"
  version "0.1.01"
  sha256 "768ab528fd82839ff19139f7d79bd5499b3345d11b9100d62bf9bfd40e3d04ac"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system "#{bin}/tss", "--version"
  end
end

class Tss < Formula
  desc "Trust-first token saving CLI for agent terminal output"
  homepage "https://github.com/uditgoenka/tss"
  url "https://github.com/uditgoenka/tss/archive/refs/tags/v0.1.01.tar.gz"
  version "0.1.01"
  sha256 "2d2a6f9fc6e5f11d013ed75c3b3270526b3d66a358cba4615d4ed379e12b251b"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system "#{bin}/tss", "--version"
  end
end

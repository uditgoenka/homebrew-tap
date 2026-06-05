class Tss < Formula
  desc "Trust-first token saving CLI for agent terminal output"
  homepage "https://github.com/uditgoenka/tss"
  url "https://github.com/uditgoenka/tss/archive/refs/tags/v0.1.01.tar.gz"
  version "0.1.01"
  sha256 "2a78f39682caa82d43405f3d86cf3bdfec9c44bcfd62cedfedd8084b63f98fba"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system "#{bin}/tss", "--version"
  end
end

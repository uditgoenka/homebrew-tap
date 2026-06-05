class Tss < Formula
  desc "Trust-first token saving CLI for agent terminal output"
  homepage "https://github.com/uditgoenka/tss"
  url "https://github.com/uditgoenka/tss/archive/refs/tags/v0.1.01.tar.gz"
  version "0.1.01"
  sha256 "20b7da618328b2d24878e6f0f5989ff63f58b7d998fe9decd092961cf22fe8a2"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system "#{bin}/tss", "--version"
  end
end

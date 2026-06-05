class Tss < Formula
  desc "Trust-first token saving CLI for agent terminal output"
  homepage "https://github.com/uditgoenka/tss"
  url "https://github.com/uditgoenka/tss/archive/refs/tags/v0.1.01.tar.gz"
  version "0.1.01"
  sha256 "b1e360422828134887c86d488affe770f26d3c5661c29a69e86c4bf102055a0e"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system "#{bin}/tss", "--version"
  end
end

class Tss < Formula
  desc "Trust-first token saving CLI for agent terminal output"
  homepage "https://github.com/uditgoenka/tss"
  url "https://github.com/uditgoenka/tss/archive/refs/tags/v0.1.02.tar.gz"
  sha256 "986f9ed1567a0f3f89dc2d5acac1bc7ed952549982a3538ad5b65636bc4aec2c"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system bin/"tss", "--version"
  end
end

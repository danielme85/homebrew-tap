class Wtop < Formula
  desc "A nimble, asynchronous Docker container monitor TUI"
  homepage "https://github.com/danielme85/wtop"
  url "https://github.com/danielme85/wtop/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "747bd04638b323ca1b617ecd7f381fbe8d6e5b240d5738402a6cb3268e05c49e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wtop --version")
  end
end

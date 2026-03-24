class Wtop < Formula
  desc "A nimble, asynchronous Docker container monitor TUI"
  homepage "https://github.com/danielme85/wtop"
  url "https://github.com/danielme85/wtop/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "c4912376952052b1c08ca7421656f17c890e9cec566ac80e98d5859fa290b082"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wtop --version")
  end
end

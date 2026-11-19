class Wtop < Formula
  desc "A nimble, asynchronous Docker container monitor TUI"
  homepage "https://github.com/danielme85/wtop"
  url "https://github.com/danielme85/wtop/archive/refs/tags/v1.3.3.tar.gz"
  sha256 "37c10ebe247865a3f86367d113797f49befc6b00262481242bdab38970ed1299"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wtop --version")
  end
end

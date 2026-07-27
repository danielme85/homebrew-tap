class Wtop < Formula
  desc "A nimble, asynchronous Docker container monitor TUI"
  homepage "https://github.com/danielme85/wtop"
  url "https://github.com/danielme85/wtop/archive/refs/tags/v1.3.2.tar.gz"
  sha256 "e18bfc53c3430e9c6fd1122e069e0e3e3f82f40dd9d6feb2309b9f709e935deb"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wtop --version")
  end
end

class Wtop < Formula
  desc "A nimble, asynchronous Docker container monitor TUI"
  homepage "https://github.com/danielme85/wtop"
  url "https://github.com/danielme85/wtop/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "078c924bf5ba22df0a17967aace9f61e4460afff486f35cedf84c77568806f2f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wtop --version")
  end
end

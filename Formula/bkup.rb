class Bkup < Formula
  desc "Simple CLI tool for backing up files and directories"
  homepage "https://github.com/dyc5828/bkup-cli"
  url "https://github.com/dyc5828/bkup-cli/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "2a301144cbff4c251b0574b8be70939f57b203ce4e86aebcd434077e4e10d05d"
  license "MIT"

  def install
    bin.install "bkup"
  end

  test do
    # Create a test file and back it up
    (testpath/"test.txt").write "hello"
    system "#{bin}/bkup", "test.txt"
    assert_predicate testpath/"test.txt.bkup", :exist?
  end
end

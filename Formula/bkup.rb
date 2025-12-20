class Bkup < Formula
  desc "Simple CLI tool for backing up files and directories"
  homepage "https://github.com/dyc5828/bkup-cli"
  url "https://github.com/dyc5828/bkup-cli/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "be4864941aabfe302a96dce6480ec7e399814de3b771c290dab0f1dc89377c7e"
  license "MIT"

  def install
    bin.install "bkup"
    zsh_completion.install "completions/_bkup"
  end

  test do
    # Create a test file and back it up
    (testpath/"test.txt").write "hello"
    system "#{bin}/bkup", "test.txt"
    assert_predicate testpath/"test.txt.bkup", :exist?
  end
end

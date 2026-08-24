class Tokenstash < Formula
  desc "Your agent asks you for a key once. Never again - in any project, in any agent."
  homepage "https://github.com/kgarg2468/tokenstash"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kgarg2468/tokenstash/releases/download/v0.1.0/tokenstash-darwin-arm64.tar.gz"
      sha256 "714f8f2ec7837008662dbeb9b0a78fead6a467f0d8dde56225ac0389db15f349"
    end
    on_intel do
      url "https://github.com/kgarg2468/tokenstash/releases/download/v0.1.0/tokenstash-darwin-x64.tar.gz"
      sha256 "76d85a26780d36bccab43f554f835a37e39ac6e9bc7b7fcf1ade1bbee3b196bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kgarg2468/tokenstash/releases/download/v0.1.0/tokenstash-linux-arm64.tar.gz"
      sha256 "704d33e7a5f5c6bfe1adfbaba3bfadc675933321e09d345eb0df804324e46ca9"
    end
    on_intel do
      url "https://github.com/kgarg2468/tokenstash/releases/download/v0.1.0/tokenstash-linux-x64.tar.gz"
      sha256 "0d4ddf18fecd02730eb98ce67a0d535bfe136a42fd7afc1ac1a9105032ff9906"
    end
  end

  def install
    bin.install "tokenstash"
  end

  test do
    assert_match "tokenstash", shell_output("#{bin}/tokenstash --help")
  end
end

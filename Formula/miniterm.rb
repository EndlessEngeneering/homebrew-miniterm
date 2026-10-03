class Miniterm < Formula
  desc "A secure terminal application menu with macOS Keychain integration"
  homepage "https://github.com"
  url "https://github.com/archive/refs/tags/V1.0.0.tar.gz"
  version "1.0.0"
  sha256 "7ff95218bef24fd6a095c6b9164ff30deb9f37f2f546fdf549b7ed7e7994981d"

  def install
    # Move internal assets safely into libexec
    libexec.install Dir["*"]
    # Write the global execution entry wrapper pointing to miniterm.sh
    (bin/"miniterm").write_env_script (libexec/"miniterm.sh"), {}
  end

  test do
    assert_match "Welcome to Miniterm!", shell_output("#{bin}/miniterm --help", 1)
  end
end

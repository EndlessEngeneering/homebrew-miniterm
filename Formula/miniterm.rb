class Miniterm < Formula
  desc "A secure terminal application menu with macOS Keychain integration"
  homepage "https://github.com/EndlessEngeneering/miniterm"
  url "https://github.com/EndlessEngeneering/miniterm/archive/refs/tags/V1.0.1.tar.gz"
  version "1.0.0"
  sha256 "5c221ff952a772e21995831d737aee721df873f3c9ebbab325bbfd577b1ae576"

  def install
    # 1. Store the source files cleanly inside libexec
    libexec.install Dir["*"]

    # 2. Make sure the master bash script has explicit execution flags set
    chmod 0755, libexec/"miniterm.sh"

    # 3. Create a clean symlink in the system path instead of a wrapped script env
    bin.install_symlink libexec/"miniterm.sh" => "miniterm"
  end

  test do
    assert_match "Welcome to Miniterm!", shell_output("#{bin}/miniterm --help", 1)
  end
end

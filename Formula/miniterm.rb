# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Miniterm < Formula
  desc "A mini terminal application for using my own custom scripts"
  homepage "https://github.com/EndlessEngeneering/miniterm"
  url "https://github.com/EndlessEngeneering/miniterm/archive/refs/tags/V1.0.0.tar.gz"
  sha256 "7ff95218bef24fd6a095c6b9164ff30deb9f37f2f546fdf549b7ed7e7994981d"
  license ""

  # depends_on "cmake" => :build

  deny_network_access!

    def install
    # This renames 'miniterm.sh' to 'miniterm' and places it in Homebrew's global binary directory
    bin.install "miniterm.sh" => "miniterm"
  end


  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test miniterm`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end

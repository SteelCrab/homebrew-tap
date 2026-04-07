# Homebrew formula for Icebox — Rust TUI Kanban Board with AI Sidebar
#
# Install:  brew tap SteelCrab/tap && brew install icebox
# Upgrade:  brew upgrade icebox
#
# This formula is auto-updated by GitHub Actions in the SteelCrab/icebox repo.
# On every version tag push (v*), the CI builds the binary, creates a release,
# and updates this formula with the new version, URL, and SHA256.

class Icebox < Formula
  desc "Rust TUI Kanban Board with AI Sidebar"
  homepage "https://github.com/SteelCrab/icebox"
  version "0.2.0"
  license "Apache-2.0"

  # macOS Apple Silicon (arm64) binary from GitHub Releases
  on_macos do
    on_arm do
      url "https://github.com/SteelCrab/icebox/releases/download/v0.2.0/icebox"
      sha256 "4e33930535a59c6267596981f8c4deaf61354ddad3ee06bc3141509264d11e8e"
    end
  end

  # Rename platform-specific binary to 'icebox'
  def install
    bin.install "icebox"
  end

  test do
    assert_match "icebox", shell_output("#{bin}/icebox help")
  end
end

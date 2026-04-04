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
  version "0.1.0"
  license "Apache-2.0"

  # macOS Apple Silicon (arm64) binary from GitHub Releases
  on_macos do
    on_arm do
      url "https://github.com/SteelCrab/icebox/releases/download/v0.1.0/icebox-darwin-arm64"
      sha256 "eef131672dd266d9ec270d540630605735e75db317aa12759d5471b6702a5f9d"
    end
  end

  # Rename platform-specific binary to 'icebox'
  def install
    binary = Dir["icebox-*"].first || "icebox"
    bin.install binary => "icebox"
  end

  test do
    assert_match "icebox", shell_output("#{bin}/icebox help")
  end
end

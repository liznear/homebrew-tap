# This is the live cask kept in the public tap repo liznear/homebrew-tap
# (at path Casks/lia.rb). It is shown here as a reference / template.
#
# The release workflow (.github/workflows/release.yml, job `update-homebrew-tap`)
# rewrites the version/sha256/url lines on every `v*` tag and commits the result
# back into liznear/homebrew-tap, so this file is normally never edited by hand.
#
# Install with:
#   brew tap liznear/tap
#   brew install --cask lia
cask "lia" do
  version "0.2.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/liznear/lia/releases/download/v0.2.0/Lia_0.2.0_aarch64.dmg"
  name "Lia"
  desc "Turn a learning goal into a linear journey of stages and lessons"
  homepage "https://github.com/liznear/lia"

  # Apple Silicon only for now (release CI builds macos-latest = arm64).
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Lia.app"

  zap trash: [
    "~/Library/Application Support/com.lia.app",
    "~/Library/Preferences/com.lia.app.plist",
    "~/Library/Saved Application State/com.lia.app.savedState",
  ]
end

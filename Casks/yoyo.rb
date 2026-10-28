# This cask is rewritten automatically by the release workflow in the private
# liznear/yoyo repo (.github/workflows/release.yml, job `update-homebrew-tap`)
# on every `v*` tag: version, sha256, and url are refreshed and committed here.
# Do not edit those three lines by hand.
#
# Install with:
#   brew tap liznear/tap
#   brew install --cask yoyo
cask "yoyo" do
  version "0.0.0"
  sha256 "PLACEHOLDER_UNTIL_FIRST_RELEASE"

  url "https://github.com/liznear/homebrew-tap/releases/download/v0.0.0/YoYo_0.0.0_aarch64.dmg"
  name "YoYo"
  desc "Personal agent system: durable collaboration server with a native macOS console"
  homepage "https://github.com/liznear/yoyo"

  # Apple Silicon only for now (release CI builds xcode-27 image = arm64).
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "YoYo.app"

  zap trash: [
    "~/Library/Preferences/dev.yoyo.YoyoApp.plist",
    "~/Library/Saved Application State/dev.yoyo.YoyoApp.savedState",
  ]
end

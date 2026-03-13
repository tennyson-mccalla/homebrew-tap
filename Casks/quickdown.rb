cask "quickdown" do
  version "0.5.0"
  sha256 "5ef65422f41546d97039015b79fc54f2f4a97f3852622969797bcb9de37b0100"

  url "https://github.com/tennyson-mccalla/QuickDown/releases/download/v#{version}/QuickDown.dmg"
  name "QuickDown"
  desc "Fast, native Markdown previewer with QuickLook integration"
  homepage "https://github.com/tennyson-mccalla/QuickDown"

  depends_on macos: ">= :sonoma"

  app "QuickDown.app"

  zap trash: "~/Library/Preferences/com.tennyson.QuickDown.plist"
end

cask "quickdown" do
  version "0.5.1"
  sha256 "cce5b45c45d41129b1c73534aabe5baa43edc3fb4faa996f9af2e8aa562e118d"

  url "https://github.com/tennyson-mccalla/QuickDown/releases/download/v#{version}/QuickDown.dmg"
  name "QuickDown"
  desc "Fast, native Markdown previewer with QuickLook integration"
  homepage "https://github.com/tennyson-mccalla/QuickDown"

  depends_on macos: ">= :sonoma"

  app "QuickDown.app"

  zap trash: "~/Library/Preferences/com.tennyson.QuickDown.plist"
end

cask "quickdown" do
    version "0.6.0"
    sha256 "2460582de0d9e89c60bca7d1c755091ed79f18a7f6a1479223d131203403ddf1"

    url "https://github.com/tennyson-mccalla/QuickDown/releases/download/v#{version}/QuickDown.dmg"
    name "QuickDown"
    desc "Fast, native Markdown previewer with QuickLook integration"
    homepage "https://github.com/tennyson-mccalla/QuickDown"

    depends_on macos: ">= :sonoma"

    app "QuickDown.app"

    zap trash: "~/Library/Preferences/com.tennyson.QuickDown.plist"
  end

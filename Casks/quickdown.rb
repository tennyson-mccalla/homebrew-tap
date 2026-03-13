cask "quickdown" do
  version "0.5.0"
  sha256 "46439e22a072a65bdfc7bdd281c6acfbffc4164c6f93ee069d420f3fc58196dd"

  url "https://github.com/tennyson-mccalla/QuickDown/releases/download/v#{version}/QuickDown.dmg"
  name "QuickDown"
  desc "Fast, native Markdown previewer with QuickLook integration"
  homepage "https://github.com/tennyson-mccalla/QuickDown"

  depends_on macos: ">= :sonoma"

  app "QuickDown.app"

  zap trash: "~/Library/Preferences/com.tennyson.QuickDown.plist"
end

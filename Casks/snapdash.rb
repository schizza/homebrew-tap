cask "snapdash" do
  version "0.0.1"

  on_arm do
    sha256 = "08ba098d2f8699be06afd944d4ab6a556c6821f5d5ff23a678aa7988e0d45364"
    url "https://github.com/schizza/snapdash/releases/download/v#{version}/snapdash-v#{version}-macos-aarch64.tar.gz"
  end

  name "Snapdash"
  desc "Pluggable desktop widget system for live data sources"
  homepage "https://snapdash.schizza.cz"

  dependes_on macos: ">= :big_sur"

  app "Snapdash.app"

  zap trash: [
    "~Library/Application Support/dev.snapdash.Snapdash",
    "~Library/Preferences/dev.snapdash.Snapdash.plist",
    "~Library/Caches/dev.snapdash.Snapdast",
  ]
end

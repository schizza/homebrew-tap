cask "snapdash" do
  version "0.0.5"

  on_arm do
    sha256 "0884c4b68fa384f97374957969bce5dd6b3f0f7eed9659c1cc52c8c23663ba3f"
    url "https://github.com/schizza/snapdash/releases/download/v#{version}/snapdash-v#{version}-macos-aarch64.tar.gz",
      verified: "github.com/schizza/snapdash/"
  end

  name "Snapdash"
  desc "Pluggable desktop widget system for live data sources"
  homepage "https://snapdash.schizza.cz"

  depends_on macos: ">= :big_sur"

  app "Snapdash.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Snapdash.app"]
  end

  zap trash: [
    "~/Library/Application Support/dev.snapdash.Snapdash",
    "~/Library/Preferences/dev.snapdash.Snapdash.plist",
    "~/Library/Caches/dev.snapdash.Snapdast",
  ]
end

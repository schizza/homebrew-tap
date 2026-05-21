cask "snapdash" do
  version "0.0.8"

  on_arm do
    sha256 "bd6b4e9d16a3760965c777c6724aff3431e546e0d5501b76f7ab7826b5d36e2f"
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

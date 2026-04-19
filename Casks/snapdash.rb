cask "snapdash" do
  version "0.0.2"

  on_arm do
    sha256 "1d6b706a7b0369998fefa2475753f01c5ec51650c8a1327b35eb88016810aa01"
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

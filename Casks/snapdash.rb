cask "snapdash" do
  version "0.0.12"

  on_arm do
    sha256 "64a42d7bf202711ec2f96d6afff9bc994658c78d74799e0f529b0c9e539d53a2"
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

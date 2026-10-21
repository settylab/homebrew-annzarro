cask "annzarro" do
  arch arm: "arm64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "a9955f9bdb075ec8c31ec3155e80e2512631c1a4f68b914efb5216e3fadfabbb",
         intel: "7bcc1f7013f7a4467df498a5cefbb51da84abe5176ae789a2aa9d0acb991e6fd"

  url "https://github.com/settylab/annzarro/releases/download/v#{version}/AnnZarro-#{version}-macos-#{arch}.dmg"
  name "AnnZarro"
  desc "Viewer for single-cell AnnData stored as zarr or h5ad"
  homepage "https://github.com/settylab/annzarro"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (electron-updater), so Homebrew leaves upgrades to it.
  auto_updates true
  depends_on macos: :ventura

  app "AnnZarro.app"

  # Not removed: ~/annzarro-data, the user's datasets and saved panel sets.
  zap trash: [
    "~/.annzarro",
    "~/.config/annzarro",
    "~/Library/Application Support/AnnZarro",
    "~/Library/Application Support/annzarro-desktop",
    "~/Library/Caches/AnnZarro",
    "~/Library/Caches/annzarro-desktop",
    "~/Library/Caches/com.annzarro.desktop",
    "~/Library/Logs/AnnZarro",
    "~/Library/Preferences/com.annzarro.desktop.plist",
    "~/Library/Saved Application State/com.annzarro.desktop.savedState",
  ]
end

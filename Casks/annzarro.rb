cask "annzarro" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "c52dd20e2c4229a865cef78115f558f13a18365bad54624ebb667d12bb51ad0e",
         intel: "e978c406b537d9a8f7bdb5da82611fb5fa96ba69927d32895a47b45e696a7757"

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

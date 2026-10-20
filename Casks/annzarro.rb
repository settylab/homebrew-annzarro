cask "annzarro" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "2c2bcb2b9373e3d367f10103da986cb4cfad1c5068c0833e67e7f402167c6e2c",
         intel: "d7988cac1bff8577b54a5a021b47adee53955571e647966e54c12d9195dded7d"

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

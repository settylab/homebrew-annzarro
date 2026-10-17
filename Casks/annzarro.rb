cask "annzarro" do
  arch arm: "arm64", intel: "x64"

  version "0.5.5"
  sha256 arm:   "0776017254d27331d73fa877bb444af8e538e17ef36f4d1ba9b29466a5d58414",
         intel: "601f831ebbd70878f02b926492c718808adc68f5a4eedb17df98f021f41c0419"

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

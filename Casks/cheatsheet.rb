cask "cheatsheet-app" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "be5ad5348a4b9eab6386685bf8dc0282f108eef829cd7cc5306e21af8aae74cb",
         intel: "e9401fabaecb99b3133527d774ff6b0b29aff307d81d39403d6ce1518e9c8357"

  url "https://github.com/MagnusPladsen/my-cheatsheet/releases/download/v#{version}/cheatsheet_#{version}_#{arch}.dmg"
  name "Cheatsheet"
  desc "Developer keybinding cheatsheet for neovim, tmux, aerospace, and more"
  homepage "https://github.com/MagnusPladsen/my-cheatsheet"

  app "cheatsheet.app"

  zap trash: [
    "~/Library/Application Support/com.magnuspladsen.cheatsheet",
  ]
end

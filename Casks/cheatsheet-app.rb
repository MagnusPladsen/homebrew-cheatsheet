cask "cheatsheet-app" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.9"
  sha256 arm:   "39f21ea53209375e4937d3b485eaab2776d23f4b34c7a579a2af8377dc187eb9",
         intel: "0478bc6b085427524ce688b2c4ce86a77943d62d58465cc79643ee1d70d02c64"

  url "https://github.com/MagnusPladsen/cheatsheet-app/releases/download/v#{version}/cheatsheet_#{version}_#{arch}.dmg"
  name "Cheatsheet"
  desc "Developer keybinding cheatsheet for neovim, tmux, aerospace, and more"
  homepage "https://github.com/MagnusPladsen/cheatsheet-app"

  app "cheatsheet.app"

  zap trash: [
    "~/Library/Application Support/com.magnuspladsen.cheatsheet",
  ]
end

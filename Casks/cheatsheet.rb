cask "cheatsheet" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "PLACEHOLDER_ARM64_SHA256",
         intel: "PLACEHOLDER_X64_SHA256"

  url "https://github.com/MagnusPladsen/my-cheatsheet/releases/download/v#{version}/cheatsheet_#{version}_#{arch}.dmg"
  name "Cheatsheet"
  desc "Developer keybinding cheatsheet for neovim, tmux, aerospace, and more"
  homepage "https://github.com/MagnusPladsen/my-cheatsheet"

  app "cheatsheet.app"

  zap trash: [
    "~/Library/Application Support/com.magnuspladsen.cheatsheet",
  ]
end

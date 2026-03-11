cask "cheatsheet-app" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.8"
  sha256 arm:   "b554aca9e893ce7fab9ba7176beaccf153f73a5df9871d5322beb19a34e9b336",
         intel: "7d6ee2b5187e58cd506f2a6d3d65fe988b3fafae75615a3b78f7879f4ea7df26"

  url "https://github.com/MagnusPladsen/cheatsheet-app/releases/download/v#{version}/cheatsheet_#{version}_#{arch}.dmg"
  name "Cheatsheet"
  desc "Developer keybinding cheatsheet for neovim, tmux, aerospace, and more"
  homepage "https://github.com/MagnusPladsen/cheatsheet-app"

  app "cheatsheet.app"

  zap trash: [
    "~/Library/Application Support/com.magnuspladsen.cheatsheet",
  ]
end

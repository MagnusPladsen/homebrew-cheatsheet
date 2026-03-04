cask "cheatsheet-app" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "50172f8fd1a2d555d40e8c947db4a439c38c91b4535e748dab1b13b73027ac90",
         intel: "9ea834a3ee31e0c84445341a34584f12cb0225a56466a522bb680e6b7ed64a5b"

  url "https://github.com/MagnusPladsen/my-cheatsheet/releases/download/v#{version}/cheatsheet_#{version}_#{arch}.dmg"
  name "Cheatsheet"
  desc "Developer keybinding cheatsheet for neovim, tmux, aerospace, and more"
  homepage "https://github.com/MagnusPladsen/my-cheatsheet"

  app "cheatsheet.app"

  zap trash: [
    "~/Library/Application Support/com.magnuspladsen.cheatsheet",
  ]
end

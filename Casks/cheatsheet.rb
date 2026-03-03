cask "cheatsheet" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "b3202d6e7701d0b338edb448d3579549758960362e0fb3fe0ab752dd4da72375",
         intel: "a8a2ec23491ffaf99988cb05bebd230721b4b98c61b6aa910682059045f7f1b7  cheatsheet_1.0.5_x64.dmg"

  url "https://github.com/MagnusPladsen/my-cheatsheet/releases/download/v#{version}/cheatsheet_#{version}_#{arch}.dmg"
  name "Cheatsheet"
  desc "Developer keybinding cheatsheet for neovim, tmux, aerospace, and more"
  homepage "https://github.com/MagnusPladsen/my-cheatsheet"

  app "cheatsheet.app"

  zap trash: [
    "~/Library/Application Support/com.magnuspladsen.cheatsheet",
  ]
end

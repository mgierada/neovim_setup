# /bin/sh

# Install neovim
brew install neovim

# Install NerdFonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install ctags

mkdir -p $HOME/.config/nvim
cp -r lua init.lua $HOME/.config/nvim/.

# /bin/sh
#
# Update homebreww and update packages
brew update && brew upgrade

# Install neovim
brew install neovim

# Install NerdFonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# Copy git config so you can use git mergetool to resolve conflicts
cp .gitconfig ~/.

# Copy nvim config files to ~/.config/nvim (tested on MacOS)
mkdir -p $HOME/.config/nvim
cp -r lua init.lua $HOME/.config/nvim/.

# /bin/sh

# Install neovim
brew install neovim

# Install NerdFonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install ctags

# Install vim-pulg
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Bulid coc
cd $HOME/.local/share/nvim/plugged/coc.vim

yarn install # Copy init.vim file

mkdir -p $HOME/.config/nvim
cp init.vim $HOME/.config/nvim/.

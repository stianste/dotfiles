# McSetup

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# skhd
brew install koekeishiya/formulae/skhd
skhd --start-service

# alt-tab
brew install --cask alt-tab

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# fzf
brew install fzf

# Various installs
brew update
brew install npm
brew install tmux
brew install azure-cli
brew install maven


# Install powerline fonts (using Source code pro for powerline atm)
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd .. && rm -rf fonts

# Symlinks
ln -s ~/projects/dotfiles/.zshrc ~/.zshrc
ln -s ~/projects/dotfiles/.skhdrc ~/.skhdrc
ln -s ~/projects/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/projects/dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/projects/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/projects/dotfiles/scripts/lint.sh ~/lint.sh

# Manual steps
# * Karabiner elements
#   * Used for mapping esc to caps lock, thilde, ctrl + k etc.
# * fzf might need a line in the zshrc
# * iterm2
#   * colors: Ayu Mirage https://github.com/hwyncho/ayu-iTerm?tab=readme-ov-file
#   * Got to `settings > appearance > minimal` to get the

# General notes
## `Text input > input` sources on the mac should be 'ABC'

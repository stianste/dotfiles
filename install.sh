### Assumes that the script is run from ~/projects/dotfiles and that git is installed
echo 'Updating and upgrading'
sudo apt update -y
sudo apt upgrade -y

echo 'Installing vim...'
sudo apt install -y vim
sudo apt install -y vim-gnome # Needed to make system clipboard work

# Set vim as default
export VISUAL=vim
export EDITOR='$VISUAL'

echo 'Making symlinks...'
ln -s ~/projects/dotfiles/.vimrc ~/.vimrc
ln -s ~/projects/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/projects/dotfiles/.bashrc ~/.bashrc
ln -s ~/projects/dotfiles/.tmux.conf ~/.tmux.conf

'Installing Vundle and plugins'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

'Installing YCM...'
sudo apt install -y build-essential cmake python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py
cd -

echo 'Making terminal case insensitive...'
# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

### Install git and set aliases
echo 'Fixing various git stuff...'
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

git config --global user.email 'stiansteinbakken94@gmail.com'
git config --global user.name 'stianste'

### Install latest version of tmux
echo 'Installing tmux...'
sudo apt install -y automake
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libevent-dev
sudo apt install -y libncurses5-dev

rm -fr /tmp/tmux

git clone https://github.com/tmux/tmux.git /tmp/tmux

cd /tmp/tmux

sh autogen.sh

./configure && make

sudo make install

cd -

rm -fr /tmp/tmux

echo ''
echo '... And done!'

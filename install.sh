### Make project directory, and clone dotfiles and symlink them
echo "TODO: Add dotfiles clone and symlinks"
TODO:
TODO: Install YMCM as well after vundle

### Make terminal case-insensitive
echo "Making terminal case insensitive"
# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

### Install git and set aliases
echo "Installing git and aliases"
sudo apt install git

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

git config --global user.email "stiansteinbakken94@gmail.com"
git config --global user.name "stianste"

# Set vim as default
export VISUAL=vim
export EDITOR="$VISUAL"

### Install latest version of tmux

sudo apt update

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

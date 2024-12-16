apt update
apt-get install ninja-build gettext cmake unzip curl build-essential -y
git clone https://github.com/neovim/neovim /tmp/neovim
cd /tmp/neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
make install

git clone https://github.com/maxherbs/nvim.git ~/.config/nvim

if [ -z ~/.zshrc ]; then
  BASH_FILE=~/.zshrc
elif [[ -z ~/.bashrc_local ]]; then
  BASH_FILE=~/.bashrc_local
else
  BASH_FILE=~/.bashrc
fi

echo 'alias vim="nvim"' >>$BASH_FILE
source $BASH_FILE

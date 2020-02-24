All my linux environment

- bash init files
- vim configuration

# Build vim
- `cd /tmp`
- `git clone https://github.com/vim/vim.git`
- `cd /tmp/vim/src`
- `sudo apt-get build-dep vim`
- `./configure --enable-python3interp=yes --enable-gui=gtk3`
- `make`
- `sudo make install`

# How to install
- Clone this repository whereever wanted
- Clone the submodules
  - `git submodule update --init --recursive`
- Build YouCompleteMe
  - Read the doc...
- Drive to this projects folder
- Create links
  - `ln -s $(pwd)/vim ~/.vim`
  - `ln -s $(pwd)/aliases ~/.aliases`
  - `ln -s $(pwd)/aliases_<xx> ~/.aliases_machine`
  - `ln -s $(pwd)/zsh/zshrc ~/.zshrc`
  - `ln -s $(pwd)/tmux/.tmux ~/.tmux`
  - `ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf`

# Deprecated
  - `ln -s $(pwd)/bash/bashrc ~/.bashrc`
  - 'ln -s $(pwd)/ls/.ls_colors ~/.ls_colors

ln -sf ~/dotfiles/vimrc ~/.vimrc
if [ ! -e ~/.vim/bundle/ ]; then
  mkdir ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

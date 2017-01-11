# unix-config

```bash
cp .vimrc ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -E -u ~/.vimrc +PluginInstall +qa > /dev/null
cd ~/.vim/bundle/Command-T/ruby/command-t/
ruby extconf.rb
make
cd ~/.vim/bundle/YouCompleteMe/
bash install.sh
```

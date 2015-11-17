Installation
============

Clone the repo:
`git clone https://github.com/f4bioss/vimfiles.git ~/.vim`
 git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Install Plugins:
Launch `vim` and run `:PluginInstall`

Make sure vim finds the vimrc file by either symlinking it:
`ln -s ~/.vim/vimrc ~/.vimrc`

or by sourcing it from  your own ~/.vimrc:
`source ~/.vim/vimrc`

Bundled Plugins

* "vim-airline":https://github.com/bling/vim-airline - lean & mean status/tabline for vim that's light as air
* "Dockerfile":https://github.com/ekalinin/Dockerfile.vim - Vim syntax file & snippets for Docker's Dockerfile

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

autocmd VimEnter * NERDTree

set tabstop=4
set shiftwidth=4
set smarttab
set et

set wrap "autocomplete

set showmatch
set hlsearch
set incsearch
set ignorecase

" tabs:
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
" -Install-
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :PluginInstall -Installing plugins
" :PluginList - lists configured plugins
" :PluginUpdate or :PluginInstall! - to update
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'
Plugin 'bling/vim-airline.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'php.vim'
" Plugin 'javascript.vim'
Plugin 'jquery.vim'
Plugin 'html.vim'
Plugin 'css.vim'

" Now we can turn our filetype functionality back on
filetype plugin indent on

" Vimrc configuration file
runtime! debian.vim

set encoding=utf-8
set nocompatible
filetype off

" Vundle loading
set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#begin('$HOME/.config/vim')

" Vundle plugins
" ANSIBLE - VIM PLUGINS LIST BEGIN
Plugin 'VundleVim/Vundle.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'klen/python-mode'
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" ANSIBLE - VIM PLUGINS LIST END

" Plugins configuration
" ANSIBLE - PLUGIN CONFIGURATION BEGIN
" Python highlighting
let python_highlight_all=1
syntax on

" YouCompleteMe configuration
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Lightline configuration
set laststatus=2
if !has('gui_running')
    set t_Co=256
endif
let g:lightline = {'colorscheme': 'wombat'}
set noshowmode

" NERDTree configuration
autocmd vimenter * NERDTree
nmap <F6> :NERDTreeToggle<CR>
" ANSIBLE - PLUGIN CONFIGURATION END

" End Vendle section
call vundle#end()
filetype plugin indent on

" Editor configuration
" ANSIBLE - EDITOR CONFIGURATION BEGIN

filetype plugin indent on
set number relativenumber

" Highlight characters over 80 column
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Color for line numbers
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Show Whitespaces
set listchars=tab:\ \ ,trail:~,extends:>,precedes:<,nbsp:+
set list

" Tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
" ANSIBLE - EDITOR CONFIGURATION END

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

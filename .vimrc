:set relativenumber 
:set mouse=a

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/itchyny/lightline.vim' 
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/tc50cal/vim-terminal'   " VIM Terminal
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer icons
call plug#end()

set encoding=utf-8
:colorscheme jellybeans


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

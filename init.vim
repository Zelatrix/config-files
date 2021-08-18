:set mouse=a
:set relativenumber
:set number
:set tabstop=2
:set shiftwidth=2

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'https://github.com/itchyny/lightline.vim'
  Plug 'https://github.com/preservim/nerdtree'            " NerdTree
  Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
  Plug 'https://github.com/tc50cal/vim-terminal'          " VIM Terminal
  Plug 'https://github.com/terryma/vim-multiple-cursors'  " CTRL + N for multiple cursors

  " Use release branch (recommend)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Autocompletion

  " Plugins for syntax highlighting
  Plug 'https://github.com/bfrg/vim-cpp-modern' " C/C++

  " This requires a Nerd Font to be installed otherwise the icons will not show up
  Plug 'https://github.com/ryanoasis/vim-devicons'        " Developer icons
call plug#end()

set encoding=utf-8      " On Neovim, UTF-8 is the default
:colorscheme elflord    " The colourscheme is set after the plugins so that the colours in
                        " awesome-vim-colorschemes are also available

let g:NERDTreeDirArrowExpandable="+"  " This icon will show when a folder structure
                                      " can be expanded
let g:NERDTreeDirArrowCollapsible="~" " This icon will show when a folder structure
                                      " can be collapsed

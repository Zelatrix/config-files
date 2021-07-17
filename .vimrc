:set mouse=a
:syntax on
:set relativenumber
:set number
:set tabstop=2

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'https://github.com/itchyny/lightline.vim'
  Plug 'https://github.com/preservim/nerdtree'            " NerdTree
  Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
  Plug 'https://github.com/tc50cal/vim-terminal'          " VIM Terminal

  " This requires a Nerd Font to be installed otherwise the icons will
  " not show up. This plugin must also be last in the list to function
  Plug 'https://github.com/ryanoasis/vim-devicons' " Developer icons
call plug#end()

set encoding=utf-8      " On Neovim, UTF-8 is the default
:colorscheme jellybeans " Because `jellybeans` is a colour from a plugin,
                        " it must be set after the plugins section so vim
                        " can find it

let g:NERDTreeDirArrowExpandable="+"  " This icon will show when a folder structure
                                      " can be expanded
let g:NERDTreeDirArrowCollapsible="~" " This icon will show when a folder structure
                                      " can be collapsed


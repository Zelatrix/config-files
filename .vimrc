:set mouse=a
:set relativenumber
:set number
:set tabstop=2
:set shiftwidth=2

" Plugins
call plug#begin('~/.vim/plugged')

  Plug 'https://github.com/itchyny/lightline.vim' 
  Plug 'https://github.com/rafi/awesome-vim-colorschemes' 	" Retro Scheme
  Plug 'https://github.com/tc50cal/vim-terminal'          	" VIM Terminal
  Plug 'https://github.com/terryma/vim-multiple-cursors'  	" CTRL + N for multiple cursors
  Plug 'https://github.com/mbbill/undotree' 								" UndoTree - version history
  Plug 'https://github.com/preservim/nerdtree'            	" NerdTree
  
	" gc comments out the line that the cursor is currently on 
	" gcc takes a count and will comment out that number of lines
 
	" For example, gc + ENTER comments out the current line
	" and gc3 + ENTER will comment out 3 lines 

	Plug 'https://github.com/tpope/vim-commentary'		 			" gcc/gc for commenting

	" ysw( applies '()' from before the character
	" you're on until the end of the word
																										
	" ysiw( will parethesise the whole word, while 
	" the cursor is inside that word
	
	" Parentheses can be either [, {, or (
 
	Plug 'https://github.com/tpope/vim-surround' 						" Surround ysw/ysiw
																													
	" Plugins for syntax highlighting
  Plug 'https://github.com/bfrg/vim-cpp-modern' " C/C++
  Plug 'https://github.com/msuperdock/vim-agda'

  " This requires a Nerd Font to be installed otherwise the icons will not show up
  Plug 'https://github.com/ryanoasis/vim-devicons' " Developer icons

call plug#end()

set encoding=utf-8      " On Neovim, UTF-8 is the default
:colorscheme elflord    " The colourscheme is set after the plugins so that the colours in 
												" awesome-vim-colorschemes are also available
										
let g:NERDTreeDirArrowExpandable="+"  " This icon will show when a folder structure can be expanded
let g:NERDTreeDirArrowCollapsible="~" " This icon will show when a folder structure can be collapsed

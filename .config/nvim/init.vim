" init.vim
set nocompatible

"==============================================================================
" Dein configuration
"==============================================================================

" Required:
set runtimepath+=/home/mahesh/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/mahesh/.config/nvim')
	call dein#begin('/home/mahesh/.config/nvim')

	" Let dein manage dein
	" Required:
	call dein#add('/home/mahesh/.config/nvim/repos/github.com/Shougo/dein.vim')

	" Custom plugins
	call dein#add('Shougo/deoplete.nvim')

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"==============================================================================
" Basic Customization
"==============================================================================

set encoding=utf8 " UTF-8
set autoread " Auto-reload changes

set wildmenu
set wildignore=*.o,*~,*.pyc,*.class " Ignore compiled stuff

" Turn off temp files
set nowb
set noswapfile
set nobackup

" Ignore case when using search
set ignorecase
set smartcase

" Make backspace work correctly
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Mouse support (because why not?)
set mouse=a

" More search options
set hlsearch   " Highlight matches
set incsearch  " Search characters as they are entered

set lazyredraw  " Redraw only when necessary
set magic  " Turn 'magic' on for regular expressions

" No noises, but show a visual bell
set noerrorbells
set visualbell

" Tab customization
set smarttab

set shiftwidth=4
set tabstop=4

"=============================================================================
" Key mappings
"=============================================================================

" Map key for highlight 'removal'
nnoremap <CR> :noh<CR><CR>

" Tab Shortcuts
map <F5> :tabe<CR>

" Use Ctrl+Shift+Up to move current line up
" Use Ctrl+Shift+Down to move current line down

noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp

" F12 to use the sudo "hack"
map <F12> :w !sudo tee % <CR>

"==============================================================================
" Deoplete options
"==============================================================================

" Use deoplete
let g:deoplete#enable_at_startup = 1


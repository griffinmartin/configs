set nocompatible
set encoding=utf-8
set ruler
set laststatus=2
set number
set hidden
set nocursorline
set lazyredraw
set title "Show the filename in the window title bar
set nostartofline "Make j/k respect the columns
set re=1
set autoindent
set autoread
set backspace=indent,eol,start
set display+=lastline
set foldmethod=syntax
set nofoldenable
set completeopt-=preview "Disable the preview window for completions.
set expandtab
set smarttab
set splitbelow splitright "Pane splitting
set noshowmode "The status line will show the mode.
set nowrap
set nrformats-=octal
set scrolloff=1
set sidescrolloff=5
set wildmenu
set wildmode=longest:full
set shiftwidth=2
set softtabstop=2
set tabstop=2
set incsearch
set ignorecase
set smartcase
set relativenumber

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

 "Functionality 
  call dein#add('scrooloose/nerdtree')
  call dein#add('wsdjeg/dein-ui.vim')

 "Visuals
  call dein#add('flazz/vim-colorschemes')
  call dein#add('/itchyny/lightline.vim')
  call dein#add('kaicataldo/material.vim')
  call dein#add('itchyny/lightline.vim')
  call dein#add('ap/vim-css-color') " CSS Vim color preview
  call dein#add('styled-components/vim-styled-components', { 'branch': 'main' })

 "Language-Specific (alphabetical by package-identifier)
  call dein#add('fatih/vim-go') " golang config
  call dein#add('chr4/nginx.vim') " nginx configs
  call dein#add('mxw/vim-jsx') " JSX highlighter (depends on underlying JS highlighter)
  call dein#add('pangloss/vim-javascript') " JS highlighter ('official' dependency of vim-jsx)

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Theme
set background=dark
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
if (has('termguicolors'))
  set termguicolors
endif

colorscheme material

let g:material_theme_style = 'palenight'
let g:lightline = { 'colorscheme': 'material_vim' }
let g:material_terminal_italics = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " hidden files
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

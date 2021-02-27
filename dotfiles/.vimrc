set nocompatible
set encoding=UTF-8
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
set background=dark
set wrap linebreak


call plug#begin('~/.nvim/autoload')
"Functionality
Plug 'scrooloose/nerdtree' 
Plug 'wsdjeg/dein-ui.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive' "git wrapper
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'jiangmiao/auto-pairs', { 'tag': 'v2.0.0' }
Plug 'liuchengxu/vim-clap'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
Plug 'liuchengxu/vim-better-default'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Autocomplete
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'mhartington/nvim-typescript'
Plug 'ncm2/ncm2-tern'
Plug 'ncm2/ncm2-go'
Plug 'ncm2/ncm2-racer'
Plug 'Shougo/deoplete.nvim'
Plug 'ncm2/float-preview.nvim'
"Visuals
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color' " CSS Vim color preview
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
"Language-Specific (alphabetical by package-identifier)
Plug 'cespare/vim-toml'
Plug 'chr4/nginx.vim' " nginx configs
Plug 'fatih/vim-go' " golang config
Plug 'mxw/vim-jsx' " JSX highlighter (depends on underlying JS highlighter)
Plug 'pangloss/vim-javascript' " JS highlighter ('official' dependency of vim-jsx) 
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer' " rust code completion
Plug 'Olical/conjure', {'tag': 'v4.0.0'}
Plug 'clojure-vim/vim-jack-in'
" Initialize plugin system
call plug#end()

filetype plugin indent on
syntax enable

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

colorscheme onedark

let g:onedark_termcolors = 256
let g:onedark_hide_endofbuffer = 1
let g:onedark_terminal_italics = 1
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
let g:airline_theme='onedark'

autocmd StdinReadPre * let s:std_in=1
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " hidden files
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" terminal mode escape rema
tnoremap <Esc> <C-\><C-n>:q!<CR>

" fuzzy search Fzf
nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>

" paren color
let g:rainbow_active = 1 

" deoplete
let g:deoplete#enable_at_startup = 1

" float
let g:float_preview#docked = 0
let g:float_preview#max_width = 80
let g:float_preview#max_height = 40

"clap
let g:clap_provider_grep_delay = 50
let g:clap_provider_grep_opts = '-H --no-heading --vimgrep --smart-case --hidden -g "!.git/"'

" ale - linting
let g:ale_fix_on_save = 1
let g:ale_linters = {
      \ 'clojure': ['clj-kondo', 'joker']
      \}

" rustfmt - linting
let g:rustfmt_autosave = 1
let g:racer_experimental_completer = 1
syntax enable                              "Allow syntax highlight
set mouse=a                                "Use mouse for scrolling
set backspace=indent,eol,start             "Make backspace behave like every other editor.
let mapleader = ' '                        "Default Leader is \, but a space is much better
set noswapfile
set ruler                                  "show cursor position all the time
set autoread                               "Reload files changed outside vim
set autoindent                             " Indent according to previous line.
set noerrorbells visualbell t_vb= 	       "No bells!
set tm=500
nnoremap <C-x> :q!<cr>
set termguicolors
" Enable loading {ftdetect,ftplugin,indent}/*.vim files.
filetype plugin indent on

"----------Tab control------"
set tabstop=4
set expandtab
set softtabstop=2
set shiftwidth=2

"----------Visuals------"
set t_Co=256
set number                                 "Let's activate line number
set wrap " turn on line wrapping
colorscheme iceberg
set laststatus=2 " show the status line all the time
set hidden " Switch between buffers without having to save first.
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes
nmap <leader>z <Plug>Zoom
" switch cursor to line when in insert mode, and block when not
let &t_SI = "\e[5 q" " insert mode vertical line
let &t_EI = "\e[1 q" " command mode block

"Toggle relative numbering, and set to absolute on loss of focus or insert
"mode
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"----------Behaviour------"
set clipboard+=unnamedplus
" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"----------Tabs------"
" CTRL-Tab is next tab
"nnoremap <C-S-tab> :tabprevious<CR>
"nnoremap <C-tab>   :tabnext<CR>
"nnoremap <C-t>     :tabnew<CR>
" CTRL-SHIFT-Tab is previous tab
"inoremap <C-S-tab> <Esc>:tabprevious<CR>i
"inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>
"nmap <C-w> :tabclose<CR>

"----------Buffer------"
" Switch between opened files in buffer with ctrl-j and crtl-k
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>

"----------Searching------"
set ignorecase                            " If search string contains only lowercase letters search is case insensitive.
set smartcase                             " If search string contains capital letters search is case sensative
set hlsearch
set incsearch
" clear highlighted search
noremap <leader>c :set hlsearch! hlsearch?<cr>

"----------Split Mapping------"
set splitbelow
set splitright

" nmap <C-j> <C-W><C-J> " Move to bottom window
" nmap <C-k> <C-W><C-K> " Move to top window
nmap <C-h> <C-W><C-H> " Move to left window
nmap <C-l> <C-W><C-L> " Move to right window

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

"Make ctrl+s work
nmap <c-s> :w<cr>
imap <c-s> <esc>:w<cr>a


"----------Mapping------"
" keep visual selection when indenting/outdenting
vmap < <gv
vmap > >gv

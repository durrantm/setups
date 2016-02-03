if has('mouse')
  set mouse=a
  if &term =~ "xterm" || &term =~ "screen"
    autocmd VimEnter * set ttymouse=xterm2
    autocmd FocusGained * set ttymouse=xterm2
    autocmd BufEnter * set ttymouse=xterm2
  endif
endif
" mdd specific stuff --- start
" commented out pathogen 2/3/2016 due to issues on osx (getting err message).
" execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
set hlsearch
set incsearch
set number
" more3 mdd stuff - set tabs to be spaces and length of 2 characters.
set smartindent
set tabstop=2 " What the tab key does, i.e. 2 spaces instead of tab
set shiftwidth=2 "What is used for indentation
set expandtab
set pastetoggle=<F2>
autocmd BufWritePre *.rb :%s/\s\+$//e
set clipboard=unnamed
" mdd specific stuff --- end
set nocompatible
" Get that filetype stuff happening
if system("uname") == "Linux" 
  set filetype off
  match ExtraWhitespace /\s\+$/
endif
syntax on " Turn on syntax highlighting
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" code folding settings below - Lets you type za to toggle folds!
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "what I use
let mapleader = ","
let loaded_matchparen = 1 " MDD Turn off matching bracket highlighting.
filetype plugin indent on    " required
filetype indent on
filetype plugin on
set hidden " Why is this not a default
set lazyredraw " Don't update the display while executing macros
set showmode " At least let yourself know what mode you're in
set wildmenu
" Let's make it easy to edit this file (mnemonic for the key sequence is 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>
" And to source this file as well (mnemonic for the key sequence is 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>
highlight ExtraWhitespace ctermbg=red guibg=red
set tags=./tags;
set paste
"Clear previous find highlighting by just typing \h while in a file.
nmap <leader>h :nohlsearch<cr>
set ignorecase " Ignore case for searches
set smartcase  " Override ignorecase if pattern contains uppercase!
" More leader stuff, use ,the_key, e.g. ,bb to actually invoke.
map <Leader>bb :!bundle install<cr>
set ruler " MDD Show current x-y in status bar
nnoremap <C-g> :!google-chrome %<CR> " browser preview with ctrl-p
nnoremap <C-f> :!firefox %<CR> " browser preview with ctrl-o
nnoremap <C-c> :!chromium-browser %<CR> " browser preview with ctrl-c
set runtimepath^=~/.vim/bundle/ctrlp.vim

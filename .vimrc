if has('mouse')
  set mouse=a
  if &term =~ "xterm" || &term =~ "screen"
    autocmd VimEnter * set ttymouse=xterm2
    autocmd FocusGained * set ttymouse=xterm2
    autocmd BufEnter * set ttymouse=xterm2
  endif
endif

" mdd specific stuff --- start
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
" Ubuntu14 autocmd BufWritePre *.rb :%s/\s\+$//e
" mdd specific stuff --- end
set nocompatible
" Get that filetype stuff happening
" Ubuntu14 set filetype off
" Ubuntu14 filetype plugin on
" Ubuntu14 filetype indent on
" Ubuntu14 syntax on " Turn on syntax highlighting
set hidden " Why is this not a default
set lazyredraw " Don't update the display while executing macros
set showmode " At least let yourself know what mode you're in
set wildmenu
" Let's make it easy to edit this file (mnemonic for the key sequence is 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>
" And to source this file as well (mnemonic for the key sequence is 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>
highlight ExtraWhitespace ctermbg=red guibg=red
" Ubuntu14 match ExtraWhitespace /\s\+$/
" Ubuntu14 autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" Ubuntu14 autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" Ubuntu14 autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" Ubuntu14 autocmd BufWinLeave * call clearmatches()
set tags=./tags;
set paste
"Clear previous find highlighting by just typing \h while in a file.
nmap <leader>h :nohlsearch<cr>
set ignorecase " Ignore case for searches
set smartcase  " Override ignorecase if pattern contains uppercase!
" Ubuntu14 let mapleader = ","
" More leader stuff, use ,the_key, e.g. ,bb to actually invoke.
map <Leader>bb :!bundle install<cr>
" code folding settings below - Lets you type za to toggle folds!
" Ubuntu14 set foldmethod=indent   "fold based on indent
" Ubuntu14 set foldnestmax=10      "deepest fold is 10 levels
" Ubuntu14 set nofoldenable        "dont fold by default
" Ubuntu14 set foldlevel=1         "what I use
set ruler " MDD Show current x-y in status bar
" Ubuntu14 let loaded_matchparen = 1 " MDD Turn off matching bracket highlighting.
" Ubuntu14 filetype plugin indent on    " required
nnoremap <C-g> :!google-chrome %<CR> " browser preview with ctrl-p
nnoremap <C-f> :!firefox %<CR> " browser preview with ctrl-o
nnoremap <C-c> :!chromium-browser %<CR> " browser preview with ctrl-c

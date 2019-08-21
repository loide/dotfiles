" Enable syntax highlight
syntax on

" Show the cursor position
set ruler

" Show the filename in the window titlebar
set title

" Highlight current line
set cursorline

" Make tabs as wide as four spaces
set tabstop=4

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Always show status line
set laststatus=2

" Wrap text within 79 characters
set textwidth=79

" Copy indent from last line when starting a new line
set autoindent

" Teach vim to syntax highlight Vagrantfile as ruby
augroup vagrant
  au!
  au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END

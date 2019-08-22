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

" The amount to block indent when using when using reindent operators (<< and >>)
set shiftwidth=4

" Uses shiftwidth instead of tabstop at start of lines
set smarttab

" Replaces a <TAB> with spaces -- more portable
set expandtab

" Causes backspace to delete 4 spaces = converted <TAB>
set softtabstop=4

"general settings: file type specific indenting
filetype indent on

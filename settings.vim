" set leader key
let g:mapleader="\<Space>"

syntax enable					" Enables syntax highlighting
set hidden					" Required to keep multiple buffers open
set nowrap					" Display long lines as just one line
set encoding=utf-8				" The encoding displayed
set pumheight=10				" Makes the popup menu smaller
set fileencoding=utf-8				" The encoding written to file
set ruler 					" Show the cursor position all the time
set cmdheight=2					" More space for displaying messages
set iskeyword+=-				" Treat dash separated words as a word text object
set mouse=a					" Enable your mouse
set splitbelow					" Horizontal splits will automatically be below
set splitright					" Vertical splits will automatically be to the right
set t_Co=256 					" Supports 256 colors
set conceallevel=0				" So I can' see `` in markdown files
set tabstop=2					" Insert 2 spaces for a tab
set number					" Line number
set cursorline					" Enable highlighting of the current line
set showtabline=2				" Always show tabs
set nobackup
set nowritebackup
set updatetime=300				" Faster completion
set clipboard=unnamedplus			" Copy and paste between vim and everything else
set expandtab
set ignorecase
set smartcase
set smarttab
"set autochdir					" Your working directory will be the same as your working directory
au! BufWritePost $MYVIMRC source %

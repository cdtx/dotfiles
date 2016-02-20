" Written with the help of : http://amix.dk/vim/vimrc.html:w
set noswapfile
set nocompatible
set backspace=2

" Use of plugin pathogen to rule them all
filetype off
filetype plugin indent off
execute pathogen#infect()
filetype on
filetype plugin indent on
call pathogen#helptags()

" Use the wildmenu
set wildchar=<Tab> wildmenu wildmode=full

" search
set ignorecase

" Tabs
set expandtab
set smartindent
set shiftwidth=4
set tabstop=4

" Line numbers
set number

" Prevent vim from creating backup files
set nobackup
set nowritebackup

" Shortcut to expand current folder name with %%
cabbr <expr> %% expand('%:p:h')

filetype plugin indent on
syntax enable

" Associate file extentions and syntax
autocmd BufNewFile,BufRead *.less   set syntax=css

colorscheme molokai
set background=dark 


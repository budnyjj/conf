set number

colorscheme desert
syntax on

set mouse=a

set tabstop=4
set shiftwidth=4
set smarttab

set wrap

set ai
set cin

set showmatch
set hlsearch
set incsearch
set smartcase


set listchars=tab:--
set list

" compilation menu

set wildmenu
set wcm=<Tab>
menu Exec.C++		:!g++ -g % <CR>
menu Exec.C		:!cc -g % <CR>
menu Exec.Python	:!python % <CR>
menu Exec.Perl    :!perl % <CR>
menu Exec.bash      :!/bin/bash % <CR>
menu Exec.Scheme	:!gsi % <CR>
map <F1> :emenu Exec.<Tab>

" tabs management
imap <F4> <Esc>:browse tabnew<CR> 
map <F4> <Esc>:browse tabnew<CR>

imap <F10> <Esc> :tabprev <CR>i
map <F10> :tabprev <CR>

imap <F12> <Esc> :tabnext <CR>i
map <F12> :tabnext <CR>

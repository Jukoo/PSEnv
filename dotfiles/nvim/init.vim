call plug#begin('~/.config/nvim/bundle')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'zchee/deoplete-jedi'
Plug 'trevordmiller/nova-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale' 
Plug 'majutsushi/tagbar' 
Plug 'vim-airline/vim-airline'
Plug 'ajmwagar/vim-deus'
Plug 'ryanoasis/vim-devicons' 
Plug 'junegunn/goyo.vim'
Plug 'vim-syntastic/syntastic'
Plug 'Nequo/vim-allomancer' 
Plug 'junegunn/vim-emoji' 
Plug 'airblade/vim-gitgutter'
" call PlugInstall to install new plugins
call plug#end()
"
" Run the command bellow to enable <PlugInstall> 
"
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
" " basics
set nu 

filetype plugin indent on
syntax on set number
"set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set expandtab
"
" " preferences
"inoremap jk <ESC>
"let mapleader = "\<Space>"
"set pastetoggle=<F2>
" j/k will move virtual lines (lines that wrap)
"noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
"noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
" " Stay in visual mode when indenting. You will never have to run gv after
" " performing an indentation.
 "vnoremap < <gv
 "vnoremap > >gv
 " Make Y yank everything from the cursor to the end of the line. This makes
" Y
" " act more like C or D because by default, Y yanks the current line (i.e.
" the
" " same as yy).
" noremap Y y$
" " navigate split screens easily
"nmap <silent> <c-k> :wincmd k<CR>
"nmap <silent> <c-j> :wincmd j<CR>
"nmap <silent> <c-h> :wincmd h<CR>
"nmap <silent> <c-l> :wincmd l<CR>
 " change spacing for language specific
"autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
"
" " plugin settings
"
" " deoplete
let g:deoplete#enable_at_startup = 1
 " use tab to forward cycle
"inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" " use tab to backward cycle
"inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" " Close the documentation window when completion is done
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"
" " Theme
" syntax enable
" "let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set termguicolors
"set background=dark
colorscheme nova
"
" "NERDTree
" " How can I close vim if the only window left open is a NERDTree?
 "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" " toggle NERDTree
map <F7> :NERDTreeToggle<CR> 
map <F3> :Tagbartoggle<CR>
map <F5> :vsp<CR>
"let g:NERDTreeChDirMode=2
"let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$',
" '__pycache__', 'node_modules']
"let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
"let g:NERDTreeShowBookmarks=1
"let g:nerdtree_tabs_focus_on_files=1
"let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
"
" " jsx
"let g:jsx_ext_required = 0
"
" " ale prettier-eslint
" "let g:ale_fixers = {
" "\   'javascript': ['prettier_eslint'],
" "\}
" "let g:ale_fix_on_save = 1
" "let g:ale_javascript_prettier_eslint_executable = 'prettier-eslint'
" "let g:ale_javascript_prettier_eslint_use_global = 1
"execute pathogen#infect()
"syntax on 
"filetype plugin indent on


let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1

"set nu
"---Short cut --
map <F7> :NERDTreeToggle<CR>
nmap <C-p> :bp<CR>
nmap <C-o> :bn<CR>
nmap <F4> :JSHintToggle<CR>
set mouse=a "Mouse 
"nmap <F3> :JSHintUpdate<CR>
nmap <F2> :TagbarToggle<CR>
"nmap <F5> :vsp<CR>

"---extras 
set completefunc=emoji#complete

set omnifunc=phpcomplete_extended#CompletePHP

set omnifunc=javacomplete#Complete

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set omnifunc=syntaxcomplete#Complete
colorscheme deus

let JSHintUpdateWriteOnly=1
set encoding=UTF-8
let g:Powerline_symbols = 'fancy'
set guifont=Ubuntu\ Mono\ for\ Powerline\ 12
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
"set guifont=UbuntuMonoRegular\Consolas\ Nerd\ Font\ 11
"set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

"set shiftwidth=4    " Indents will have a width of 4

"set softtabstop=4   " Sets the number of columns for a TAB

set expandtab   

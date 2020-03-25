execute pathogen#infect()
syntax on 
filetype plugin indent on


let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1

set nu
"---Short cut --
map <F7> :NERDTreeToggle<CR>
nmap <C-p> :bp<CR>
nmap <C-o> :bn<CR>
nmap <F4> :JSHintToggle<CR>
set mouse=a "Mouse 
nmap <F3> :JSHintUpdate<CR>
nmap <F2> :TagbarToggle<CR>
nmap <F5> :vsp<CR>

"---extras 
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
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab   

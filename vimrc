syntax on
let python_highlight_all=1

"tabs search
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch
set incsearch
set ignorecase
set smartcase

" folding
set foldmethod=indent
set foldlevel=5
set foldclose=all

" show endof line character
set lcs=eol:$,tab:\ \
:
"save current buffers
:exec 'set viminfo=%,' . &viminfo

" source ~/.vim/plugins/cscope_maps.vim
set guifont=Menlo\ Regular:h13
set tags=~/.vim/tags/cartacode
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" no beeps
set vb

" always trim trailing whitespace .. is there ever a good reason?
" and some other autocommands
autocmd BufWritePre * :%s/\s\+$//e
autocmd! bufwritepost .vimrc source %
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" mouse
set mouse=a

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
"
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" pathogen package manager
execute pathogen#infect()
filetype plugin indent on
filetype plugin on


set noai
"set line numbering
"
set relativenumber
set number
function! Nt()
    if(&relativenumber == 1)
        set norelativenumber
        set nonumber
    else
       set relativenumber
       set number
    endif
endfunc
nnoremap <c-b> :call Nt()<cr>


" Fugitive
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gb :Gblame<CR>

vnoremap < <gv
vnoremap > >gv

set colorcolumn=120
set wrap
set fo-=t

" powerline - air-line
set laststatus=2
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

map <C-t> :NERDTreeToggle<CR>

" color schme
if has('gui_running')
        colorscheme solarized
        set background=light
endif
function! Bb()
    colorscheme solarized
    set background=dark
endfunc
nnoremap <c-d> :call Bb()<cr>

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_mode_map = { 'passive_filetypes': ['rst'] }


" Do platform specific stuff
 if has("unix")
   let s:uname = system("uname -s")
     if s:uname == "Darwin"
         " Do Mac stuff here
     else
        " Do Linux stuff here
     endif
 endif

" window splitting
nmap <space>s :sp<CR>
nmap <space>v :vsplit<CR>

"buffer setup
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <space>n :enew<cr>

" Move to the next buffer
nmap <space>l :bnext<CR>

" Move to the previous buffer
nmap <space>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <space>q :bp <BAR> bd #<CR>

"Buffers opene the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" Looper buffers
let g:buffergator_mru_cycle_loop = 1


" Tag bar
nmap <F8> :TagbarToggle<CR>




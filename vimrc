set nocompatible      " We're running Vim, not Vi!

" pathogen package manager
execute pathogen#infect()

"tabs search
syntax on             " Enable syntax highlighting
"set ts=4
set tabstop=2 shiftwidth=2 softtabstop=2
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch
set incsearch
set ignorecase
set autoindent
set shell=/bin/bash


filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on
let python_highlight_all=1

nnoremap <F3> :set hlsearch!<CR>

" folding
set foldmethod=indent
set foldlevel=2
set foldclose=all

" show endof line character
set lcs=eol:$,tab:\ \
:
"save current buffers
:exec 'set viminfo=%,' . &viminfo

" source ~/.vim/plugins/cscope_maps.vim
" set tags=~/.vim/tags/cartacode
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
nmap <space>f :tag<space>

" no beeps
set noerrorbells vb t_vb=

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
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhi"tespace /\s\+$/


" CtrlP
let g:ctrlp_match_window="top, order:ttb,min:1,max:30,results:30"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap <c-s> :CtrlPBufTag<cr>
nmap <D-s> :CtrlPBufTag<cr>
nmap <c-F> :CtrlPMRUFiles<cr>
nmap <D-F> :CtrlPMRUFiles<cr>

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
nnoremap <c-z> :call Nt()<cr>


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

"--- Split Management ----
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" window splitting
nmap <space>s :sp<CR>
nmap <space>v :vsplit<CR>
set splitbelow
set splitright

" NERD Tree stuff
" map <C-t> :NERDTreeToggle<CR>
map <C-t> :NERDTreeTabsToggle<CR>

" identation show/hide
map <C-i> :IndentGuidesToggle<CR>


" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_mode_map = { 'passive_filetypes': ['rst'] }

"Ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:ruby_indent_block_style = 'do'

imap <S-CR>    <CR><CR>end<Esc>-cc
imap <TAB> <c-x><c-o>


"Quickrun
let g:quickrun_config={'*': {'split': ''}}
set splitbelow
nmap <F9> :w<CR>:QuickRun<CR>

" Do platform specific stuff
 if has("unix")
   let s:uname = system("uname -s")
     if s:uname == "Darwin"
         " Do Mac stuff here
     else
        " Do Linux stuff here
     endif
 endif


"buffer setup
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

"Ack grep
nmap <space>\ :Ack

" Search setup

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g "'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


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

"-------- Visuals --------
colorscheme atom-dark

set guifont=Menlo\ Regular:h13
set t_CO=256

set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

nmap <Leader>ev :e $MYVIMRC<cr>
nmap <Leader>es :ex ~/.vim/bundle/snipmate.vim/snippets<cr>



" Tips and tricks
" zz -center current line
" di( - delete inside ( (can be ", {
" <space>f - :tag  (Find)
" K - keyword search
" Ctrl ] to go defintion Ctrl ^ - back
" zo -opne folding zR - make all folding go away
" leader map to \ by default

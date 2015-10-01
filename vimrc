let python_highlight_all=1
syntax on

"tabs search
set ts=4
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase

" folding
set foldmethod=indent
set foldlevel=2
set foldclose=all

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

" copy and paste
set clipboard=unnamed

" mouse
"

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
"
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set mouse=a

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

execute pathogen#infect()
filetype plugin indent on

set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" Fugitive
"
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gb :Gblame<CR>


vnoremap < <gv
vnoremap > >gv

set colorcolumn=120
set nowrap
set fo-=t

" poweline
set laststatus=2

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

map <C-t> :NERDTreeToggle<CR>

if has('gui_running')
        colorscheme solarized
        set background=light
endif

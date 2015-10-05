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
set foldlevel=1
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

"set line numbering
set relativenumber
function! Nt()
  if(&relativenumber == 1)
    set number
  else
    if (&number == 1)
      set nonumber
    else
      set relativenumber
    endif
  endif
endfunc
nnoremap <c-b> :call Nt()<cr>

" Fugitive
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

" color schme
if has('gui_running')
        colorscheme solarized
        set background=light
endif

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Do platform specific stuff
 if has("unix")
   let s:uname = system("uname -s")
     if s:uname == "Darwin"
         " Do Mac stuff here
     else
        " Do Linux stuff here
     endif
 endif

syntax on

"tabs search
set ts=4
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase

" source ~/.vim/plugins/cscope_maps.vim
set guifont=Menlo\ Regular:h13
set tags=~/.vim/tags/cartacode
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
        \ }

autocmd! bufwritepost .vimrc source %
" copy and paste
set clipboard=unnamed

" mouse 
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

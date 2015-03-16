syntax on

set background=dark
set expandtab tabstop=2 shiftwidth=2
set splitright
set hlsearch

if has("autocmd")
    autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0 
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

execute pathogen#infect()

let g:hybrid_use_Xresources = 1
colorscheme hybrid 

map <C-b> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1 "Open NERDtree if no file specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

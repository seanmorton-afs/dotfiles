" Config
set autoread                        " Reload externally edited files
set encoding=utf-8                  " For the wurldz
set nocompatible                    " Use vim rather than vi settings
set pastetoggle=<F10>               " Enable past insert mode with F10
set scrolloff=5                     " Display at least 5 lines above and below the cursor
set t_ut=                           " Disable background color erase for tmux/screen
set splitbelow                      " Open splits as a bottom pane

" Appearance
syntax on                           " Enable syntax highlighting
set linebreak                       " Wrap at convenient points
set number relativenumber           " 'Hybrid' line numbers
set ruler                           " Show row,column numbers

" Searching
set hlsearch                        " Highlight search results
set ignorecase                      " Ignore case while searching
set smartcase                       " Unless capital letter specified

" Indentation
set autoindent                      " Indent to same level of previous line
set expandtab                       " Use spaces instead of tabs
set shiftwidth=2                    " Width for auto tab operations
set smartindent                     " Add indents to nested statements
set smarttab                        " Handle tabs at beginning of lines better
set softtabstop=2                   " Width of tab when in insert mode
set tabstop=2                       " Width of a tab

" Configure FZF
set rtp+=/opt/homebrew/bin/fzf
let g:fzf_layout = { 'down': '20%' }
let g:fzf_colors =
  \ { 'hl':       ['fg', 'fzfHighlight'],
    \ 'hl+':      ['fg', 'fzfHighlight'],
    \ 'fg+':      ['fg', 'fzfCurrLine'],
    \ 'bg+':      ['bg', 'fzfCurrLine'],
    \ 'pointer':  ['fg', 'fzfPointer'],
    \ 'spinner':  ['fg', 'fzfSpinner'],
    \ 'info':     ['fg', 'fzfInfo'],
    \ 'prompt':   ['fg', 'fzfPrompt'] }

" Remappings
nnoremap <CR> :noh<CR><CR>
noremap <Leader>n :set number! relativenumber!<CR>
map Y y$

" [ctags] open definition vertical split
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
set tags+=gems.tags

if has("autocmd")
  " Tab settings for Makefiles
  autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

  " Remove trailing whitespace
  autocmd BufWritePre * :%s/\s\+$//e

  " Always start on the first line of commit files
  autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])
endif

" Multipurpose tab key
" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<C-p>"
    endif
endfunction
inoremap <Tab> <C-r>=InsertTabWrapper()<CR>
inoremap <S-Tab> <C-n>

" Get syntax group under cursor
nnoremap <F11> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Must be set before ALE is loaded
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 1500
" set omnifunc=ale#completion#OmniFunc

" Pathogen plugin manager
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
  filetype plugin indent on
  colorscheme Tomorrow-Night-Eighties

  " NERDTree file browser
  " https://github.com/scrooloose/nerdtree
  map <C-b> :NERDTreeToggle<CR>
  let NERDTreeShowHidden=1
  let g:terraform_align=1
  let g:terraform_fmt_on_save=1

  " ALE linter
  noremap <Leader>l :ALEToggle<CR>
  noremap <Leader>j :ALENext<CR>
  noremap <Leader>k :ALEPrevious<CR>
  noremap <Leader>d :ALEGoToDefinition<CR>
  noremap <Leader>f :ALEFindReferences -quickfix<CR>
  noremap <Leader>r :ALERename<CR>
  noremap <Leader>i :ALEHover<CR>
  let g:ale_sign_error='XX'
  let g:ale_sign_warning='!!'
  let g:ale_virtualtext_cursor = 'current'
  let g:ale_fix_on_save = 1
  let g:ale_hover_to_preview = 1

  " comfortable-motion (smooth scroll)
  let g:comfortable_motion_no_default_key_mappings = 1
  let g:comfortable_motion_impulse_multiplier = 1.5
  nnoremap <silent> <C-j> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0))<CR>
  nnoremap <silent> <C-k> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * -1 * winheight(0))<CR>

  " fugitive
  noremap <Leader>g :Git blame<CR>

  " fzf.vim
  noremap <Leader>a :Rg<Space>
  noremap <Leader>s :Rg <C-R><C-W>
  noremap <Leader>t :FZF<CR>
  noremap <Leader>b :Buffers<CR>
  let g:fzf_preview_window = ['right:60%:hidden', 'ctrl-/']
  " Don't shell escape arguments passed to :Rg
  command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".<q-args>, 1, <bang>0)

  " vim-go-syntax
  let g:go_highlight_function_calls = 0

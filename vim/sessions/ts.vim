" ~/.vim/sessions/ts.vim:
" Vim session script.
" Created by session.vim 2.10.1 on 25 June 2015 at 11:34:13.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 0 | filetype plugin off | endif
if exists('g:did_indent_on') != 0 | filetype indent off | endif
if &background != 'light'
	set background=light
endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let NERDTreeMapPreviewSplit = "gi"
let NERDTreeHijackNetrw = "1"
let NERDTreeMapCloseChildren = "X"
let NERDTreeMapOpenVSplit = "s"
let Taboo_tabs = "1	root\n2	assets\n3	controllers\n4	models\n5	services\n6	views\n"
let NERDTreeShowLineNumbers = "0"
let NERDTreeMapPreviewVSplit = "gs"
let NERDTreeNotificationThreshold = "100"
let NERDTreeMapActivateNode = "o"
let NERDTreeMapDeleteBookmark = "D"
let NERDTreeBookmarksSort = "1"
let NERDTreeHighlightCursorline = "1"
let NERDTreeAutoCenter = "1"
let NERDTreeWinPos = "left"
let NERDTreeMapCloseDir = "x"
let NERDTreeMapOpenInTab = "t"
let NERDTreeMapJumpNextSibling = "<C-j>"
let NERDTreeSortHiddenFirst = "1"
let NERDTreeMinimalUI = "0"
let NERDTreeStatusline = "%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}"
let NERDTreeMapQuit = "q"
let NERDTreeMapChangeRoot = "C"
let NERDTreeMapCWD = "CD"
let NERDTreeRespectWildIgnore = "0"
let NERDTreeMapOpenInTabSilent = "T"
let NERDTreeMapHelp = "?"
let NERDTreeSortDirs = "1"
let NERDTreeMapJumpParent = "p"
let NERDTreeMapMenu = "m"
let NERDTreeMapRefresh = "r"
let NERDTreeMapUpdir = "u"
let NERDTreeDirArrows = "1"
let NERDTreeShowHidden = "0"
let NERDTreeMapJumpRoot = "P"
let NERDTreeMapJumpPrevSibling = "<C-k>"
let NERDTreeShowBookmarks = "0"
let NERDTreeMapOpenExpl = "e"
let NERDTreeRemoveDirCmd = "rm -rf "
let NERDTreeMapJumpFirstChild = "K"
let NERDTreeBookmarksFile = "/Users/morton/.NERDTreeBookmarks"
let NERDTreeMapChdir = "cd"
let NERDTreeMapToggleHidden = "I"
let NERDTreeWinSize = "31"
let NERDTreeMapToggleZoom = "A"
let NERDTreeMouseMode = "1"
let NERDTreeMapOpenRecursively = "O"
let NERDTreeMapToggleBookmarks = "B"
let NERDTreeChDirMode = "0"
let NERDTreeAutoDeleteBuffer =  0 
let NERDTreeCopyCmd = "cp -r "
let NERDTreeMapToggleFiles = "F"
let NERDTreeMapRefreshRoot = "R"
let NERDTreeMapToggleFilters = "f"
let NERDTreeMapUpdirKeepOpen = "U"
let NERDTreeAutoCenterThreshold = "3"
let NERDTreeShowFiles = "1"
let NERDTreeQuitOnOpen = "0"
let NERDTreeMapOpenSplit = "i"
let NERDTreeMapJumpLastChild = "J"
let NERDTreeCascadeOpenSingleChildDir = "1"
let NERDTreeMapPreview = "go"
let NERDTreeCaseSensitiveSort = "0"
silent only
cd ~/termsync
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +2 app/models/account.rb
silent! argdel *
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
" file NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
" file NERD_tree_3
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
" file NERD_tree_4
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
" file NERD_tree_6
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabnew
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
" file NERD_tree_5
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/termsync
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1wincmd w
tabnext 2
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/termsync/app/assets
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1wincmd w
tabnext 3
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/termsync/app/controllers
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1wincmd w
tabnext 4
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/termsync/app/models
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1wincmd w
tabnext 5
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/termsync/app/services
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1wincmd w
tabnext 6
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/termsync/app/views
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
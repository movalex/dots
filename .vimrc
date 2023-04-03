set nocompatible
set ignorecase
set cursorline
set hlsearch
set incsearch
set noswapfile
set clipboard^=unnamed,unnamedplus
set title

" --------- set pwd to local directory for all files -----------
set autochdir

au! BufEnter *.py syn match specialComment /#!!.*/  " Python files (*.py)


" make backspaces more powerfull
set backspace=indent,eol,start

set guioptions-=r
set guioptions-=L
set number
set wrap
set linebreak
set encoding=UTF-8
" --------- show command typed -----------
set showcmd   
syntax enable

autocmd Syntax * call SyntaxRange#Include('//begin=glsl//', '//end=glsl//', 'glsl', 'NonText')
autocmd Syntax * call SyntaxRange#Include('--begin=lua--', '--end=lua--', 'lua', 'NonText')

" --------- folding method ----------- 
set foldmethod=manual 
" set guifont=Menlo\ Regular:h15
" set guifont=Fira\ Code\ Retina:h15

set guifont=Hack\ Nerd\ Font:h15
let mapleader = ','
nnoremap <leader>w :ToggleWorkspace<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"--------- vmap move indent -----------
vmap > >gv
vmap < <gv

"--------- set spellcheck -----------
imap <Leader>l <C-o>:setlocal spell! spelllang=ru_ru,en_us<CR>
nnoremap <Leader>l :setlocal spell! spelllang=ru_ru,en_us<CR>

" --------- do not move comment on new line  -----------
set formatoptions-=ro

"--------- session management  -----------" 
" let g:session_directory = "~/.vim/session"
" let g:session_autoload = "no"
" let g:session_autosave = "no"
" let g:session_command_aliases = 1

" --------- set python path  -----------
" set pythonthreehome=/Users/videopro/.pyenv/versions/3.6.8/Python.framework/Versions/3.6
" set pythonthreedll=$HOME/.pyenv/versions/3.6.8/Python.framework/Versions/Current/lib/libpython3.6m.dylib
" set pythonthreedll=/Library/Frameworks/Python.framework/Versions/3.6/lib/libpython3.6m.dylib
" set pythonthreedll=$HOME/.pyenv/versions/4.7.6/Python.framework/Versions/Current/lib/libpython3.7m.dylib

"--------- map ALT+K and ALT+J for terminal vim -----------
nnoremap ˚ :m .+1<CR>== 
nnoremap ∆ :m .-2<CR>==

" --------- replace all  -----------
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" --------- color theme  -----------
" colorscheme onedark

let vim_markdown_preview_github=1

" ----- clear search --- 
noremap <CR><CR> :noh<CR>

" --------- activate visual on shift-V -----------
nmap <S-down> V 
nmap <S-up> V
" in visual mode
vmap <S-down> j
vmap <S-up> k

" --------- switch windows  -----------"
nnoremap <C-right> <c-w>l
nnoremap <C-left>  <c-w>h
nnoremap <C-up>    <c-w>k
nnoremap <C-down>  <c-w>j
imap <C-right> <ESC><c-w>l
imap <C-left>  <ESC><c-w>h
imap <C-up>    <ESC><c-w>k
imap <C-down>  <ESC><c-w>j

" --------- replace ----------- 
iab fir for
" --------- Macros ----------- 
let @a='i"  20i-10hi  h i'
" --------- Plugins ----------- 
call plug#begin('~/.vim/plugged')
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'chrisbra/Colorizer'
" Plug 'lepture/vim-jinja'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'mileszs/ack.vim'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'css', 'python', 'json', 'markdown', 'yaml', 'html', 'xml'] }
" Plug 'psf/black'
" Plug 'ryanoasis/vim-devicons'
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'tikhomirov/vim-glsl'
" Plug 'udalov/kotlin-vim' 
" Plug 'vim-airline/vim-airline-themes'
" Plug 'ycm-core/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Galicarnax/vim-regex-syntax' 
Plug 'henrik/vim-reveal-in-finder'
Plug 'honza/vim-snippets'
Plug 'inkarkat/vim-SyntaxRange'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'movalex/vim-dctl'
Plug 'plytophogy/vim-virtualenv'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'severin-lemaignan/vim-minimap'
Plug 'SirVer/ultisnips'
Plug 'thaerkh/vim-workspace'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'wakatime/vim-wakatime'
call plug#end()
"-------- Vundle end -------"

" --------- vim python syntax ----------- 
let g:python_highlight_all = 1

" ---------set ctrlp ignore home dir-----------
if executable('ag')
  let g:ctrlp_user_command = 'ag %s --nocolor -g ""'
endif
" ----------ctrlp ignore .git---------
let g:ctrlp_custom_ignore = {
  \ 'dir': 'node_modules\|DS_Store\|.git'
  \ }
" ----------ctrlp start in MRU---------
let g:ctrlp_cmd = 'CtrlPMRU'

" --------- MiniMap ----------- 
let g:minimap_show='<leader>mm'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>mc'
let g:minimap_toggle='<leader>mt'

" --------- YouCompleteMe ----------- 

let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_semantic_triggers = {
            \ 'python': ['re!\w{2}']
            \ }

"--------- Ultisnips snippets -----------
" Trigger configuration.
" Do not use <tab> to UltiSnipsExpandTrigger if you use YouCompleteMe

" UltiSnips triggering
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsListSnippets="<c-s-tab>"
" let g:UltiSnipsExpandTrigger = '<C-j>'
" let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
" let g:UltiSnipsJumpForwardTrigger = '<C-l>'
" let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

    
" --------- hilight f-strings ----------- 
let g:python_highlight_all = 1

"--------- nerd commenter conf -----------
nnoremap <Leader>f :NERDTreeFind<CR>

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = {
      \ 'python': { 'left': '#', 'right': '' }
      \ }

"--------- nerd tree conf -----------
let NERDTreeIgnore = [
            \ '\.DS_Store$',
            \ '.git',
            \ '__pycache__',
            \ ]
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeWinSize = 28     
let NERDTreeQuitOpen = 1
let NERDTreeAutoDeleteBuffer = 1 " detele buffer of deleted file
" autoclose if NT is the last window -----------
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" prettify nerdtree -----------
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

filetype indent plugin on

" nmap <F5>  :w:!python3 % <cr>

autocmd BufRead *.py nnoremap <buffer> <F5> :wa<CR> :exec '!python3' shellescape(@%, 1)<cr>
autocmd BufRead *.cpp nnoremap <buffer> <F9> :wa<CR> :!g++ % -o %< && ./%< && rm %<<CR>
autocmd BufRead *.c nnoremap <buffer> <F9> :wa<CR> :!gcc % -o %< && ./%< && rm %<<CR>

nmap <F6>  :NERDTreeToggle<CR>
nmap <F7>  :terminal<CR><C-W>j<CR><C-W>R<CR><C-W>12+<CR><C-W>j
" --------- open in firefox ----------- 
noremap <F10> :!open -a Firefox %<CR>

let NERDTreeShowHidden=1

"-------------- tabs ---------------"
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

" set keymap=russian-jcukenmac
set keymap=russian-jcuken
set iminsert=0                  " default english keyboard
set imsearch=0                  " default english search

"--------- auto sudo -----------"
cmap w!! w !sudo tee % > /dev/null %

"-------------- autocommands Fusion ----------"
au BufReadPost *.fu,*.fuse,*.comp,*.setting,*.scriptlib,*.eyeonscript,*.atom  set filetype=lua
au BufReadPost *.conf set filetype=conf

au FileType vim set shiftwidth=2
au FileType yaml set shiftwidth=2


" use Ctrl+L to toggle the line number counting method
function! g:ToggleNuMode()
  if (&rnu == 1)
     set nornu
  else
    set rnu
  endif
endfunction

nnoremap <silent><c-l> :call g:ToggleNuMode()<cr>


if has("gui_running")
"--------- macvim statusline -----------

  colorscheme atom-dark
  let g:webdevicons_conceal_nerdtree_brackets = 1

function! ActiveStatus()
  let statusline=""
  let statusline.="%1*"
  let statusline.="%(%{'help'!=&filetype?'\ \ '.bufnr('%'):''}\ %)"
  let statusline.="%2*"
  let statusline.=""
  let statusline.="%{fugitive#head()!=''?'\ \ '.fugitive#head().'\ ':''}"
  let statusline.="%3*"
  let statusline.=""
  let statusline.="%4*"
  let statusline.="\ %<"
  let statusline.="%f"
  let statusline.="%{&modified?'\ \ +':''}"
  let statusline.="%{&readonly?'\ \ ':''}"
  let statusline.="%="
  let statusline.="\ %{''!=#&filetype?&filetype:'none'}"
  let statusline.="%(\ %{(&bomb\|\|'^$\|utf-8'!~#&fileencoding?'\ '.&fileencoding.(&bomb?'-bom':''):'').('unix'!=#&fileformat?'\ '.&fileformat:'')}%)"
  let statusline.="%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)"
  let statusline.="%3*"
  let statusline.="\ "
  let statusline.="%2*"
  let statusline.=""
  let statusline.="%1*"
  let statusline.="\ %2v"
  let statusline.="\ %3p%%\ "
  return statusline
endfunction

function! InactiveStatus()
  let statusline=""
  return statusline
endfunction

set statusline=%!ActiveStatus()

hi User1 guibg=#afd700 guifg=#005f00
hi User2 guibg=#005f00 guifg=#afd700
hi User3 guibg=#222222 guifg=#005f00
hi User4 guibg=#222222 guifg=#d0d0d0

augroup status
  autocmd!
  autocmd WinEnter * setlocal statusline=%!ActiveStatus()
  autocmd WinLeave * setlocal statusline=%!InactiveStatus()
  autocmd ColorScheme kalisi if(&background=="dark") | hi User1 guibg=#afd700 guifg=#005f00 | endif
  autocmd ColorScheme kalisi if(&background=="dark") | hi User2 guibg=#005f00 guifg=#afd700 | endif
  autocmd ColorScheme kalisi if(&background=="dark") | hi User3 guibg=#222222 guifg=#005f00 | endif
  autocmd ColorScheme kalisi if(&background=="dark") | hi User4 guibg=#222222 guifg=#d0d0d0 | endif
  autocmd ColorScheme kalisi if(&background=="light") | hi User1 guibg=#afd700 guifg=#005f00 | endif
  autocmd ColorScheme kalisi if(&background=="light") | hi User2 guibg=#005f00 guifg=#afd700 | endif
  autocmd ColorScheme kalisi if(&background=="light") | hi User3 guibg=#707070 guifg=#005f00 | endif
  autocmd ColorScheme kalisi if(&background=="light") | hi User4 guibg=#707070 guifg=#d0d0d0 | endif
  let g:NERDTreeStatusline = '%#NonText#'
augroup END

augroup nerdtreehidecwd
    autocmd!
    autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeHideCWD #^[</].*$# conceal
augroup end
 
  set linespace=7
  let g:webdevicons_enable = 1
  let g:webdevicons_enable_nerdtree = 1
  inoremap <C-Space> <C-n>

  set macligatures
  au BufReadPost *.html set nomacligatures
  set macmeta
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>
  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>

else " no gui found

"--------- disable devicons for terminal -----------
  let g:webdevicons_enable = 0
  let g:webdevicons_enable_nerdtree = 0

  set t_Co=256
  colorscheme atom-dark-256

"--------- shell statusline -----------
  set laststatus=2
  set statusline=
  set statusline+=%#LineNr#
  set statusline+=\ %f
  set statusline+=%=
  set statusline+=%#CursorColumn#
  set statusline+=\ %y
  set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
  set statusline+=\ [%{&fileformat}\]
  set statusline+=\ %p%%
  set statusline+=\ %l:%c
endif

" ---------move lines schortcuts-----------
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
" inoremap <C-j> <Esc>:m .+1<CR>==gi
" inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


function! ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  " trigger ShowSpaces on/off:
  if a:0
   let &hlsearch=!&hlsearch
  else
   let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function! TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction


function! DeleteHiddenBuffers()
  let tpbl=[]
  let count_closed = 0
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    if getbufvar(buf, '&mod') == 0
      silent execute 'bwipeout' buf
      let count_closed += 1
    endif
  endfor
  echo "Closed ".count_closed." hidden buffers"
endfunction




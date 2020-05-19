set nocompatible
set ignorecase
set cursorline
set hlsearch
set incsearch
set noswapfile
 " --------- set pwd to local directory for all files -----------
set autochdir

set guioptions-=r
set guioptions-=L
set number
set wrap
set linebreak
set encoding=UTF-8
" --------- show command typed -----------
set showcmd   
syntax enable

" --------- open in firefox ----------- 
noremap <F10> :!open -a Firefox %<CR>
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
set pythonthreedll=/Library/Frameworks/Python.framework/Versions/3.6/lib/libpython3.6m.dylib
" set pythonthreedll=$HOME/.pyenv/versions/4.7.6/Python.framework/Versions/Current/lib/libpython3.7m.dylib

"--------- map ALP+K and ALT+J for terminal vim -----------
nnoremap ˚ :m .+1<CR>== 
nnoremap ∆ :m .-2<CR>==

" --------- replace all  -----------
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" --------- color theme  -----------
" colorscheme onedark

let vim_markdown_preview_github=1

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
call plug#begin('~/.vim/bundle/plugged')
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'chrisbra/Colorizer'
" Plug 'lepture/vim-jinja'
" Plug 'maksimr/vim-jsbeautify'
" Plug 'mileszs/ack.vim'
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'udalov/kotlin-vim' 
" Plug 'vim-airline/vim-airline-themes'
Plug 'vim-python/python-syntax'
" Plug 'VundleVim/Vundle.vim'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'css', 'less', 'scss', 'python', 'json', 'markdown', 'yaml', 'html'] }
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-python/python-syntax'
Plug 'ambv/black'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'henrik/vim-reveal-in-finder'
Plug 'honza/vim-snippets'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'jiangmiao/auto-pairs'
Plug 'plytophogy/vim-virtualenv'
Plug 'python-mode/python-mode', { 'for': 'python3' }
Plug 'ryanoasis/vim-devicons'
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
Plug 'Valloric/YouCompleteMe'
Plug 'wakatime/vim-wakatime'
call plug#end()

" call vundle#end()
" Snippets are separated from the engine. Add this if you want them:

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
" ----------ctrlp help ---------
" helptags ~/.vim/bundle/ctrlp.vim/doc

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
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
"
" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsListSnippets="<c-s-tab>"
" let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

" let g:UltiSnipsExpandTrigger="<c-tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"

"--------- pymode -----------
let g:pymode_python = 'python3'
let g:pymode_lint_ignore = ["E501","W"]
" let g:pymode_lint_ignore = ["E0602","E501","W"]
let g:pymode_rope = 0
let g:pymode_lint_options_pep8 =
        \ {'max_line_length': 88}
let g:pymode_rope_rename_bind = '<Leader>rr'
let g:pymode_rope_module_to_package_bind = '<Leader>r1p'
let g:pymode_rope_completion = 0
let g:pymode_rope_autoimport = 1
let g:pymode_options_colorcolumn = 0
    
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
let NERDTreeIgnore = [
            \ '\.DS_Store$',
            \ '.git',
            \ '__pycache__',
            \ '__pycache__',
            \ '.ropeproject'
            \ ]
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeWinSize = 28     
let NERDTreeQuitOpen = 1
let NERDTreeAutoDeleteBuffer = 1            "detele buffer of deleted file
"--------- autoclose if NT is the last window -----------
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"--------- prettify nerdtree -----------
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

filetype indent plugin on

"-------- Vundle end -------"
nmap <F5>  :w:!python3 % <cr>
nmap <F6>  :NERDTreeToggle<CR>
nmap <F7>  :terminal<CR><C-W>j<CR><C-W>R<CR><C-W>12+<CR><C-W>j
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
"-------------- lua fusion ----------"
au BufReadPost *.fu set filetype=lua
au BufReadPost *.fuse set filetype=lua
au BufReadPost *.atom set filetype=lua
au BufReadPost *.layout set filetype=lua
au BufReadPost *.setting set filetype=lua
au BufReadPost *.scriptlib set filetype=lua
au BufReadPost *.eyeonscript set filetype=lua
au BufReadPost *.conf set filetype=dosini

autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd FileType vim set shiftwidth=2
autocmd FileType yaml set shiftwidth=2
" ------------------------------
" use Ctrl+L to toggle the line number counting method
function! g:ToggleNuMode()
  if (&rnu == 1)
     set nornu
  else
    set rnu
  endif
endfunction
nnoremap <silent><c-l> :call g:ToggleNuMode()<cr>

" Toggle 'default' terminal
nnoremap <M-T> :call ChooseTerm("term-slider", 1)<CR>
" Start terminal in current pane
nnoremap <M-CR> :call ChooseTerm("term-pane", 0)<CR>


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
  " let statusline.="%(%{'help'!=&filetype?'\ \ '.bufnr('%').'\ \ ':'\ '}%)"
  " let statusline.="%{fugitive#head()!=''?'\ \ '.fugitive#head().'\ ':'\ '}"
  " let statusline.="\ %<"
  " let statusline.="%f"
  " let statusline.="%{&modified?'\ \ +':''}"
  " let statusline.="%{&readonly?'\ \ ':''}"
  " let statusline.="%="
  " let statusline.="\ %{''!=#&filetype?&filetype:'none'}"
  " let statusline.="%(\ %{(&bomb\|\|'^$\|utf-8'!~#&fileencoding?'\ '.&fileencoding.(&bomb?'-bom':''):'').('unix'!=#&fileformat?'\ '.&fileformat:'')}%)"
  " let statusline.="%(\ \ %{&modifiable?(&expandtab?'et\ ':'noet\ ').&shiftwidth:''}%)"
  " let statusline.="\ \ "
  " let statusline.="\ %2v"
  " let statusline.="\ %3p%%\ "
  return statusline
endfunction
" set laststatus=2
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
  " --------- map move lines  -----------
  nnoremap <A-j> :m .+1<CR>==
  nnoremap <A-k> :m .-2<CR>==
  inoremap <A-j> <Esc>:m .+1<CR>==gi
  inoremap <A-k> <Esc>:m .-2<CR>==gi
  vnoremap <A-j> :m '>+1<CR>gv=gv
  vnoremap <A-k> :m '<-2<CR>gv=gv
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
else 
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



function! ChooseTerm(termname, slider)
    let pane = bufwinnr(a:termname)
    let buf = bufexists(a:termname)
    if pane > 0
        " pane is visible
        if a:slider > 0
            :exe pane . "wincmd c"
        else
            :exe "e #"
        endif
    elseif buf > 0
        " buffer is not in pane
        if a:slider
            :exe "topleft split"
        endif
        :exe "buffer " . a:termname
    else
        " buffer is not loaded, create
        if a:slider
            :exe "topleft split"
        endif
        :terminal
        :exe "f " a:termname
    endif
endfunction


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
  let closed = 0
  call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
  for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
    if getbufvar(buf, '&mod') == 0
      silent execute 'bwipeout' buf
      let closed += 1
    endif
  endfor
  echo "Closed ".closed." hidden buffers"
endfunction



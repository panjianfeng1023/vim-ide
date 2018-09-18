set tags+=~/.vim/tags
syntax on
filetype plugin indent on
set nocompatible                 "some plugin need it
set hlsearch                     "highlight the search
set incsearch                    "move to fit position after one char input
set nobackup                     "won't produce the backup file when save file
set nowritebackup                "won't produce the backup file when save file
set noswapfile                   "won't use swapfile
set hidden                       "can open other file when a file is not saved
set ruler                        "show ruler at the right bottom
set nowrap                       "disable auto newline
set laststatus=2                 "status bar will show anytime
set updatetime=200               "tagbar response 800ms
set showmatch matchtime=0        "show the other bracket
set wmnu wildmode=longest:full   "when in command mode can use auto complete same as bash
set expandtab tabstop=4          "expand the tab to 4 space
set si ai ci cinkeys-=0# 
set cinoptions=g0,:0             "some indent rules
set shiftwidth=4                 "make the indent 4 length
set softtabstop=4                "backspace can del 4 space
set lcs=eol:$,tab:\|\            "display tab to green line
set backspace=indent,eol,start   "better backspace
set fileencodings=utf-8,cp936    "auto test the file is uft-8 or cp936
set fileformats=unix,dos,mac     "line feed different in different mode
set completeopt=menuone,longest
set pastetoggle=<F9>
set complete=.,w,b,k

highlight TagbarHighlight guifg=Green ctermfg=Green
let NERDTreeHighlightCursorline = 0
let NERDTreeDirArrows=0
let NERDTreeWinSize=40
let NERDRemoveExtraSpaces=0
let g:tagbar_sort=0
let g:tagbar_compact=1
let g:tagbar_foldlevel=1
let g:tagbar_iconchars=['+', '-']
let OmniCpp_SelectFirstItem = 2
let OmniCpp_ShowPrototypeInAbbr = 1 
let OmniCpp_MayCompleteScope = 1

let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerDisableDefaultKeyMapping = 1
let g:winManagerWindowLayout='NERDTree|BufExplorer'
let g:winManagerWidth=40
let g:persistentBehaviour = 0

let g:NERDTree_title = "[NERDTree]"
function! NERDTree_Start()
    exe 'q'
    exe 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction


"file list
map <silent> <F2> :WMToggle<cr>:TagbarToggle<cr><c-w>l
imap <silent> <F2> <esc>:WMToggle<cr>:TagbarToggle<cr><c-w>li
"tarbar functon list
map <F4> :A<cr>
imap <F4> <esc>:A<cr>a
"update index
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<cr><cr>:cs kill cscope.out<cr>:!cscope -Rb<cr><cr>:cs add cscope.out<cr>
imap <F5> <esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<cr><cr>:cs kill cscope.out<cr>:!cscope -Rb<cr><cr>:cs add cscope.out<cr>i
"switch display invisable char or not
map <F6> :set list!<cr>
imap <F6> <esc>:set list!<cr>a
"highlight
map <F7> ms:%s /\<<C-R>=expand("<cword>")<CR>\>//gn<cr>`s
imap <F7> <esc>ms:%s /\<<C-R>=expand("<cword>")<CR>\>//gn<cr>`sa
"quit
map <F10> :qa<cr>
imap <F10> <esc>:qa<cr>
"comment visual line
vnoremap <silent> , :call NERDComment(1, "alignLeft")<cr>
"uncomment visual line
vnoremap <silent> . :call NERDComment(1, "uncomment")<cr>
"show list if more tag 
nnoremap <c-]> g<c-]>
"move to right window
noremap <c-Right> <c-w>l
inoremap <c-Right> <esc><c-w>l
"move to up window
noremap <c-Up> <c-w>k
inoremap <c-Up> <esc><c-w>k
"move to down window
noremap <c-Down> <c-w>j
inoremap <c-Down> <esc><c-w>j
"move to left window
noremap <c-Left> <c-w>h
inoremap <c-Left> <esc><c-w>h
"search word in the project
nmap <C-[>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"search word in the project and the word can be in text
nmap <C-[>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"list the file which filename is this word
nmap <C-[>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"list the file which include this file
nmap <C-[>i :cs find i <C-R>=expand("%:t")<CR><CR>

if has("cscope") 
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
endif

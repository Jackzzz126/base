set nocp

"-------------------------- define ------------------------------------
let sys = "linux"
if has("macunix")
	sys = "mac"
elseif has("win16") || has("win32") || has("win64") || has("win95")
	sys = "windows"
endif
let mode = "dev"
"---------------------------------------------------------------------

"-------------------------- vim-plug ------------------------------------
call plug#begin('~/.vim/plugs')
if mode == "dev"
	if sys == "linux"
		" auto complete
		Plug 'Valloric/YouCompleteMe'
	endif
endif

if mode == "dev"
    " js auto complete
    Plug 'marijnh/tern_for_vim'
    " vim go
    " Plugin 'fatih/vim-go'
    " syntax check
    Plug 'scrooloose/syntastic'
    " gutentags
    Plug 'ludovicchabant/vim-gutentags'
endif

" log file syntax highlighting
Plug 'dzeban/vim-log-syntax'
" js syntax highlighting
Plug 'pangloss/vim-javascript'
" mkd
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" ts syntax highlighting
Plug 'leafgarland/typescript-vim'
" indent line
Plug 'Yggdroot/indentLine'
" LeaderF
Plug 'Yggdroot/LeaderF'
" Tagbar
" Plugin 'majutsushi/tagbar'

call plug#end()
"---------------------------------------------------------------------

"-------------------------- plug setting ---------------------------
if mode == "dev"
	if sys == "linux"
		" YouCompleteMe
		set completeopt-=preview
		let g:ycm_add_preview_to_completeopt = 0
		let g:ycm_show_diagnostics_ui = 0
		let g:ycm_server_log_level = 'info'
		let g:ycm_min_num_identifier_candidate_chars = 2
		let g:ycm_collect_identifiers_from_comments_and_strings = 1
		let g:ycm_complete_in_strings=1
		let g:ycm_key_invoke_completion = '<c-z>'
		set completeopt=menu,menuone
		let g:ycm_semantic_triggers =  {
		           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
		           \ 'cs,lua,javascript': ['re!\w{2}'],
		           \ }
	endif
endif

if mode == "dev"
    " syntastic
    let g:syntastic_javascript_checkers = ['jshint']
    let g:syntastic_python_checkers = ['pylint']
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
endif

" python
let g:python_recommended_style = 0

nmap <F7> :Errors<CR>

" Yggdroot/indentLine
let g:indentLine_concealcursor = ""
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_first_char = '┊'

" LeaderF
let g:Lf_DefaultMode = 'FullPath'
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_WorkingDirectoryMode = 'Ac'

" Tagbar"
" nmap <F8> :TagbarToggle<CR>
" let g:tagbar_left = 1
" let g:tagbar_zoomwidth = 0
" let g:tagbar_autofocus = 1
" let g:tagbar_autoclose = 1

" gutentags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
"---------------------------------------------------------------------

"-------------------------- comm ------------------------------------
"comm
set backspace=indent,eol,start
"visual
set ruler
set number
set ts=4
set sw=4
"set expandtab
set sts=4
set autoindent
set smartindent
set linebreak
"set cindent
syntax on
filetype plugin indent on
"colo desert
"show tab and blank in line end
set list
set listchars=tab:\>\ ,trail:-

"serarch
set hlsearch
set incsearch
set ignorecase
set smartcase

"encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"foldmethod
set fdm=syntax
set foldlevelstart=99
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"copy/paste
map ty :w! ~/.vimxfer<cr>
map tp :r ~/.vimxfer<cr>

" matchit
runtime macros/matchit.vim

" gf command
set suffixesadd+=.js
set suffixesadd+=.json


"abbreviations
"iabbrev /* /**/<left><left><backspace>

" maps
let mapleader = ","
" normal
nnoremap <leader>e :split $MYVIMRC<cr>
nnoremap <leader>r :source $MYVIMRC<cr>:echom ".vimrc reloaded!"<cr>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>,  <Plug>(go-run)
nnoremap K 10k
nnoremap J 10j
" LeaderF
nnoremap <leader>t :LeaderfTag<cr>

" insert
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap ` ``<LEFT>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" virsual
vnoremap <leader>// I//<esc>
vnoremap <leader># I#<esc>

" compile
set autowrite

"tags;
set tags=./.tags;,.tags;
set tags+=~/.vim/systags
set autochdir

" quick fix
nnoremap <C-j> :cn<CR>
nnoremap <C-k> :cp<CR>
" location list
nnoremap <C-n> :lnext<CR>
nnoremap <C-p> :lprev<CR>

"<leader>, to run current file
map <leader>, :call CompileRun()<CR>
func! CompileRun()
	exec "w"

	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!java %<"
	elseif &filetype == 'sh'
		exec "!bash %"
	elseif &filetype == 'python'
		exec "!python %"
	elseif &filetype == 'javascript'
		exec "!node %"
	endif
endfunc

if exists('$TMUX')
	autocmd BufEnter * call system("tmux rename-window '" . expand("%:t") . "'")
	autocm VimLeave * call system("tmux setw automatic-rename")
endif

"---------------------------------------------------------------------



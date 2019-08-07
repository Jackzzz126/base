set nocp

"-------------------------- vim-plug ------------------------------------
call plug#begin('~/.vim/plugs')
" auto complete
Plug 'Valloric/YouCompleteMe'
" tab nine
" Plug 'zxqfl/tabnine-vim'
" js auto complete
Plug 'marijnh/tern_for_vim'

" syntax check
Plug 'w0rp/ale'

" c++ auto tag
Plug 'ludovicchabant/vim-gutentags'

" GO
" Plugin 'fatih/vim-go'

" log file syntax highlighting
Plug 'dzeban/vim-log-syntax'
" js syntax highlighting
Plug 'pangloss/vim-javascript'
" mkd align
Plug 'godlygeek/tabular'
" mkd syntax highlighting
Plug 'plasticboy/vim-markdown'
" ts syntax highlighting
Plug 'leafgarland/typescript-vim'
" indent line
Plug 'Yggdroot/indentLine'
" LeaderF
Plug 'Yggdroot/LeaderF'
" Tagbar
" Plugin 'majutsushi/tagbar'
" cpp syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'
" color scheme
Plug 'altercation/vim-colors-solarized'

call plug#end()
"--------------------------eof plug-------------------------------------------

"-------------------------- plug setting ---------------------------
" YouCompleteMe
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs=0
let g:ycm_enable_diagnostic_highlighting=0
let g:ycm_show_diagnostics_ui=0
let g:ycm_server_log_level = 'info'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let ycm_complete_in_strings=1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

" syntastic
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_python_checkers = ['pylint']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" ale
let g:ale_linters_explicit = 1
let g:ale_linters = {
	\   'javascript': ['jshint'],
	\   'cpp': ['gcc', 'cppcheck'],
	\}
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

let g:ale_c_gcc_options = '-Wall -O0 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O0 -std=c++11'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

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

"--------------------------eof plug setting-------------------------------------------

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

" tmux
if exists('$TMUX')
	autocmd BufEnter * call system("tmux rename-window '" . expand("%:t") . "'")
	autocm VimLeave * call system("tmux setw automatic-rename")
endif

" python
let g:python_recommended_style = 1
autocmd FileType python set expandtab       "tab替换为空格键

" color scheme
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_visibility="low"
syntax enable
set background=dark
colorscheme solarized

"--------------------------eof comm-------------------------------------

"--------------------------leader--------------------------------------
" maps
let mapleader = ","
" normal
nnoremap <leader>e :split $MYVIMRC<cr>
nnoremap <leader>r :source $MYVIMRC<cr>:echom ".vimrc reloaded!"<cr>
" Go
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>,  <Plug>(go-run)
" LeaderF
nnoremap <leader>t :LeaderfTag<cr>

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
"-------------------------eof leader----------------------------------------



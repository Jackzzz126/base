set nocp

let sys = "linux"
if has("macunix")
	sys = "mac"
elseif has("win16") || has("win32") || has("win64") || has("win95")
	sys = "windows"
endif
let mode = "dev"

"Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
if mode == "dev"
	" syntax check
	Plugin 'scrooloose/syntastic'
	" indent line
	Plugin 'Yggdroot/indentLine'
	if sys == "linux"
		" auto complete
		Plugin 'Valloric/YouCompleteMe'
		" js auto complete
		Plugin 'marijnh/tern_for_vim'
	endif
	" vim go
	Plugin 'fatih/vim-go'
endif
" mkd
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" js syntax highlighting
Plugin 'vim-scripts/JavaScript-syntax'
" ts syntax highlighting
Plugin 'leafgarland/typescript-vim'
" log file syntax highlighting
Plugin 'dzeban/vim-log-syntax'
call vundle#end()            " required

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

if mode == "dev"
	"tags
	set tags+=./tags,../tags,../../tags,../../../tags
	set tags+=~/.vim/systags
	set autochdir

	" syntastic
	let g:syntastic_javascript_checkers = ['jshint']
	let g:syntastic_python_checkers = ['pylint']
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

"	let g:syntastic_always_populate_loc_list = 1
"	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

	" YouCompleteMe
	set completeopt-=preview

	" Yggdroot/indentLine
	let g:indentLine_color_term = 239
	let g:indentLine_char = '┊'
	let g:indentLine_showFirstIndentLevel = 1
	let g:indentLine_first_char = '┊'
endif

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

" quick fix
" location list
nnoremap <expr><C-n> (&buftype=='quickfix'?':cn':':lnext')."\n"
nnoremap <expr><C-p> (&buftype=='quickfix'?':cp':':lprev')."\n"

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
	elseif &filetype == 'py'
		exec "!python %"
		exec "!python %<"
	elseif &filetype == 'javascript'
		exec "!node %"
	endif
endfunc

" python
let g:python_recommended_style = 0



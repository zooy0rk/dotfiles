execute pathogen#infect()

syntax on
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class shiftwidth=2 tabstop=2 softtabstop=2 autoindent 
autocmd BufNewFile,BufRead *.json set ft=javascript smartindent cinwords={ shiftwidth=2 tabstop=2 autoindent
set background=dark
set smartindent autoindent
set expandtab tabstop=2 shiftwidth=2 softtabstop=2

let b:delimitMate_expand_cr=1

if has("autocmd")
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif 

:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>

:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>
:nmap \d :cprev<CR>
:nmap \f :cnext<CR>

:nmap j gj
:nmap k gk

"":nmap <C-e> :e#<CR>

:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>

 
:nmap ; :CtrlPBuffer<CR>
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

:nmap \e :NERDTreeToggle<CR>

let g:Powerline_symbols = 'fancy'
set encoding=utf-8
"set fillchars+=stl:\ ,stlnc:\
set laststatus=2
set showtabline=2
set noshowmode

:nmap \T :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
"":nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=2 softtabstop=2 shiftwidth=2<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

nmap <F8> :TagbarToggle<CR>

colors zenburn

nnoremap <space>r :!cd ~/dcms ; ./gradlew desktop:run<CR>

nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
nnoremap <space>gps :Dispatch! git push<CR>
nnoremap <space>gpl :Dispatch! git pull<CR>


:map <C-l> <C-w>l
:map <C-j> <C-w>j
:map <C-k> <C-w>k
:map <C-h> <C-w>h

:filetype indent plugin on
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

:hi MatchParen cterm=bold ctermbg=none ctermfg=green

:set colorcolumn=100
:set nu

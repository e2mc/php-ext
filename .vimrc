set nocompatible              " be iMproved, required
filetype off                  " required
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'Shougo/neocomplcache.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'shawncplus/php.vim'
Plugin 'tobyS/pdv'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line


"set mouse=a
set showmatch
set hls
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp936,gbk
set number
set history=100
syntax on
filetype plugin indent on
set sw=4
set ts=4
set expandtab
set nocompatible
set incsearch
set nowrap

map <F2> :w<CR>
map <F3> :vsplit<CR><C-w>l:ConqueTerm bash<CR>

imap <F2> <ESC>:w<CR>i
imap <F3> <ESC>:vsplit<CR><C-w>l:ConqueTerm bash<CR>i

set ai

" neo自动提示插件的配置
" Use neocomplcache.
" let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
" let g:neocomplcache_enable_smart_case = 1
" let g:neocomplcache_enable_auto_select = 1

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
" if !exists('g:neocomplcache_omni_patterns')
" let g:neocomplcache_omni_patterns = {}
" endif
" let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
" let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

" let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
" nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

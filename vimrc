set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" Bundles:
" Based
Bundle "L9"
Bundle "TabBar"
Bundle "FuzzyFinder"
Bundle "git://github.com/scrooloose/nerdtree.git"
Bundle "git://git.wincent.com/command-t.git"
Bundle "git://github.com/msanders/snipmate.vim.git"
Bundle "git://github.com/tpope/vim-surround.git"
Bundle "git://github.com/tsaleh/vim-supertab.git"
Bundle "git://github.com/tsaleh/vim-tcomment.git"
Bundle "git://github.com/edsono/vim-matchit.git"
Bundle "git://github.com/tsaleh/vim-align.git"
Bundle "git://github.com/tpope/vim-repeat.git"
Bundle "git://github.com/mileszs/ack.vim.git"
" Colors
Bundle "vibrantink"
Bundle "git://github.com/tpope/vim-vividchalk.git"
Bundle "git://github.com/ciaranm/inkpot.git"
" Git
Bundle "git://github.com/motemen/git-vim.git"
" Bundle "git://github.com/c9s/hypergit.vim.git"
" Docs
Bundle "git-cheat"
" Languages
Bundle "rails.vim"
Bundle "ruby-matchit"
Bundle "jQuery"
Bundle "javascript.vim"
Bundle "git://github.com/DasIch/vim-vala.git"
Bundle "git://github.com/timcharper/textile.vim.git"
Bundle "git://github.com/tpope/vim-markdown.git"

" " Pathogen. "{{{1
" " see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
" filetype off 
" call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()
"}}}

"base setup "{{{1
  au BufReadPost *.io set syntax=io
  set fileencodings=utf-8,gb18030,big5,cp1251,cp866,euc-jp,euc-kr,latin1,ucs-bom " 设置多编码文本 " multi-encoding setting
  set nocompatible " Use Vim defaults (much better!)

" 设置语法折叠 "{{{2
  " set foldmethod=syntax
  " 设置标记折叠
  set foldmethod=marker
  set foldcolumn=1
  set modeline
"}}}
" 參數設置 "{{{2
  set hidden "set hidden 就能换buffer的时候不要求save了..
  set tabstop=4 shiftwidth=4 "让tab变成2个空字符
  set number
  set numberwidth=5
  set autoindent
  set smarttab
  set expandtab
  " set laststatus=2 
  set isfname-={,} "FileName Completion in Shell Scripts http://vim.wikia.com/wiki/FileName_Completion_in_Shell_Scripts
  " http://www.limboy.com/2009/05/30/vim-setting/
  " http://hi.baidu.com/suping/blog/item/12a59851e9bc942842a75b2c.html
  set linespace=4 "行间距，如果默认值太小，代码会非常纠结
  set matchpairs=(:),{:},[:],<:> " "匹配括号的规则，增加针对html的<>
  set nowrap " 禁止自动换行
  set whichwrap=b,s,<,>,[,] "让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）
  " set mouse=a

" Configuring Vim right
" http://items.sjbach.com/319/configuring-vim-right"{{{3
" Make file/command completion useful
  " Settings from deo's vimrc - http://dtremea.googlepages.com/vimrc
  set wildmode=list:full
  set pastetoggle=<c-u>

  let mapleader = "," " Map leader to ,
  set history=1000 " Keep a longer history
  set ignorecase 
  set smartcase " Use case-smart searching
  set scrolloff=3 " Maintain more context around the cursor
  set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp " Store temporary files in a central spot
  set ruler " Enable limited line numbering
  set shortmess=atI " Stifle many interruptive prompts
" Large file
" http://stackoverflow.com/questions/178257/how-to-avoid-syntax-highlighting-for-large-files-in-vim
autocmd BufReadPre * if getfsize(expand("%")) > 10000000 | syntax off | endif

" A bunch of stuff your OS should already do"{{{
  set backspace=indent,eol,start " Intuitive backspacing in insert mode
  syntax on
  filetype on
  filetype plugin indent on
  set hlsearch
  set incsearch " ...dynamically as they are typed.
"}}}
"}}} "}}}
"PHP autocomplete"{{{2
"http://lindenliu.com/2009/12/how-to-configure-your-vim-for-php-autocomplete/
au FileType php set omnifunc=phpcomplete#CompletePHP

" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)

let php_sql_query=1
let php_htmlInStrings=1 "}}}
"Vala syntax http://live.gnome.org/Vala/Vim "{{{
autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala
" Disable valadoc syntax highlight
"let vala_ignore_valadoc = 1

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1
" Disable trailing space errors
"let vala_no_trail_space_error = 1
" Disable space-tab-space errors
let vala_no_tab_space_error = 1

" Minimum lines used for comment syncing (default 50)
"let vala_minlines = 120
"}}}
" colorscheme "{{{2
   colorscheme inkpot
   " colorscheme vividchalk
  set t_Co=256
"}}} "}}}

"Plugins setting "{{{
  " Topplugins "{{{
    " http://www.youtube.com/watch?v=_galFWwSDt0
    " Here is links to all of them:
    "
    " -------------------------------------------
    "  Surround
    "  http://www.vim.org/scripts/script.php?script_id=1697
    "  Snipmate
    "  http://www.vim.org/scripts/script.php?script_id=2540
    "  TComment
    "  http://www.vim.org/scripts/script.php?script_id=1173
    " MRU
    "  http://www.vim.org/scripts/script.php?script_id=521
    "  FuzzyFinder
    "  http://www.vim.org/scripts/script.php?script_id=1984
    "  NERDTree
    "  http://www.vim.org/scripts/script.php?script_id=1658
    "  Matchit
    "  http://www.vim.org/scripts/script.php?script_id=39
  "}}}

  " Switch Window Key Maps:"{{{
  " Switch between Vim window splits easily http://vim.wikia.com/wiki/Switch_between_Vim_window_splits_easily
    map <C-H> <C-W>h
    map <C-J> <C-W>j
    map <C-K> <C-W>k
    map <C-L> <C-W>l
    map <C-TAB> <C-W>w<C-W>_
    map - <C-W>-
    map + <C-W>+
  "}}}
  " Nerd Tree Stuff:"{{{
    let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
    let NERDTreeShowBookmarks = 1
    map <silent> <C-p> :NERDTreeToggle<CR>
    "}}}
  " SuperTab Stuff:"{{{
    let g:SuperTabDefaultCompletionType = "context"
    "}}}
    "Surround stuff:
    autocmd FileType php let b:surround_45 = "<?php \r ?>"
  " FuzzyFinder Stuff:"{{{
  " http://colonelpanic.net/2010/05/textmate-go-to-file-in-vim/
  " :h fuzzyfinder@en
  let fuf_modesDisable = []
  let g:fuf_splitPathMatching = 1
  let g:fuf_abbrevMap = {
        \   '^vr:' : map(filter(split(&runtimepath, ','), 'v:val !~ "after$"'), 'v:val . ''/**/'''),
        \   '^m0:' : [ '/mnt/d/0/', '/mnt/j/0/' ],
        \ }
  nnoremap <silent> <leader>f :FufFile ~/<CR>
  " http://colonelpanic.net/2010/05/textmate-go-to-file-in-vim/
  nnoremap <silent> <leader>t :FufFile **/<CR>
  nnoremap <silent> <leader>h :FufHelp<CR>
  nnoremap <silent> gb        :FufBuffer<CR>
  nnoremap <silent> gm        :FufMruFile<CR>
  nnoremap <silent> <leader>c :FufMruCmd<CR>
  "}}}
 " }}}

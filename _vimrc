source $VIMRUNTIME/vimrc_example.vim

" basic configuration
set hlsearch
set relativenumber
set nu
highlight LineNr ctermfg=Grey
highlight CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=Yellow ctermbg=Black
" highlight CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=Yellow ctermbg=24
highlight Cursor ctermbg=Yellow guibg=Yellow guifg=Yellow ctermbg=Black
" highlight CursorLine ctermbg=24
highlight CursorLine ctermbg=Black
" set termguicolors
set cursorline
" set autoindent
" set smartindent
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showmatch
set background=dark
set wildmenu
set paste
set ruler
set scrolloff=0
set whichwrap+=<,>,h,l
set mouse=a
set selection=exclusive 
set selectmode=mouse,key
set directory=$HOME/.vim/.swp//
" interesting???
set undodir=$HOME/.vim/.undo//
set backupdir=$HOME/.vim/.backup//
set foldmethod=manual
set clipboard=unnamed
set autoread

" plug in installation
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
" Plug 'sillybun/autoformatpythonstatement'
Plug 'kien/rainbow_parentheses.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'github/copilot.vim'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'dhruvasagar/vim-table-mode'
Plug 'mzlogin/vim-markdown-toc'
call plug#end()


" NERDTree Configuration
map <C-n> :NERDTreeToggle<CR>	" use ctrl + n to open and close NERDTree

" NERDCommenter Configuration
filetype plugin on
" Add spaces after comment delimiters b" y default
let g:NERDSpaceDelims = 1

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_python= 1

" auto-pairs configuration
au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>','<?php': '?>'})

" indentLine Configuration
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" rainbow_parentheses.vim configuration
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
let g:rbpt_colorpairs = [
        \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]


" F5 to run sh/python3
set pythonthreedll=D:Python/python311.dll
map <F5> :call PRUN()<CR>
func! PRUN()
    exec "w" 
    if &filetype == 'python'
        exec "!python %"
    endif
 endfunc


" autoformatpythonstatement configuration
autocmd FileType python let g:autoformatpython_enabled = 1

" vim-instant-markdown configuration
let g:instant_markdown_mathjax = 1
let g:instant_markdown_mermaid = 1
let g:instant_markdown_port = 8888
" let g:instant_markdown_autoscroll = 0
let g:instant_markdown_theme = 'dark'
" map <F11> :InstantMarkdownPreview<CR>


" vim-table-mode configuration
" function! s:isAtStartOfLine(mapping)
  " let text_before_cursor = getline('.')[0 : col('.')-1]
  " let mapping_pattern = '\V' . escape(a:mapping, '\')
  " let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  " return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
" endfunction

" inoreabbrev <expr> <bar><bar>
		  " \ <SID>isAtStartOfLine('\|\|') ?
		  " \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
" inoreabbrev <expr> __
		  " \ <SID>isAtStartOfLine('__') ?
		 "  \ '<c-o>:silent! TableModeDisable<cr>' : '__'


" vim-markdown-toc configuration
let g:vmt_auto_update_on_save=1
let g:vmt_cycle_list_item_markers=1


" auto fillin brackets
inoremap ( ()<ESC>i  "设置（自动补全
inoremap [ []<ESC>i  "设置[自动补全
inoremap { {}<ESC>i  "设置{自动补全
inoremap < <><ESC>i  "设置<自动补全
inoremap ' ''<ESC>i  "设置'自动补全
inoremap " ""<ESC>i  "设置"自动补全


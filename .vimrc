" ////////////////////////////////////////////////////
" File Name   : .vimrc
" Author      : wang song
" Date        : 2021.9.2
" Discription : personal gvim configurations
" ////////////////////////////////////////////////////


" First, install <vim-plugin> as bellow:
"   curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   source ~/.vimrc
" Then, open .vimrc with Gvim:
"   :PlugInstall


" ////////////////////////////////////////////////////
" /////                  Plugs                  //////
" ////////////////////////////////////////////////////
" :PlugInstall
" :PlugUpdate
" :PlugClean

call plug#begin()
    Plug 'https://hub.gitfast.tk/SWang-FD/nerdtree'
    Plug 'https://hub.gitfast.tk/SWang-FD/nerdcommenter'
    Plug 'https://hub.gitfast.tk/SWang-FD/fzf'
    Plug 'https://hub.gitfast.tk/SWang-FD/limelight.vim'
    Plug 'https://hub.gitfast.tk/SWang-FD-airline/vim-airline'
    Plug 'https://hub.gitfast.tk/SWang-FD-airline/vim-airline-themes'
    Plug 'https://hub.gitfast.tk/SWang-FD/vim-sneak'
    Plug 'https://hub.gitfast.tk/SWang-FD/vim-multiple-cursors'
    Plug 'https://hub.gitfast.tk/SWang-FD/vim-expand-region'
    Plug 'https://hub.gitfast.tk/SWang-FD/vim-smooth-scroll'
    Plug 'https://hub.gitfast.tk/SWang-FD/ack.vim'
    Plug 'https://hub.gitfast.tk/SWang-FD/rainbow'
    Plug 'https://hub.gitfast.tk/SWang-FD/vim-colors-solarized'
    Plug 'https://hub.gitfast.tk/SWang-FD/gruvbox'
    Plug 'https://hub.gitfast.tk/SWang-FD/vim-one'
    Plug 'https://hub.gitfast.tk/SWang-FD/vim-scala'
    Plug 'https://hub.gitfast.tk/SWang-FD/vim-chisel'
call plug#end()
" ////////////////////////////////////////////////////
set laststatus=2 "1为关闭底部状态栏 2为开启"
set t_Co=256
syntax enable
let g:solarized_termcolors=256
let g:gruvbox_termcolors=256
let g:one_allow_italics=1
let github = 0
let guardian2 = 0
let molokai = 0


" ////////////////////////////////////////////////////
" /////                 Themes                  //////
" ////////////////////////////////////////////////////
"
set background=dark  " dark or light, choose a background for your theme
" set background=light

" Choose one theme from these below:

" color evening
" let github = 1
" let guardian2 = 1
" let molokai = 1
" colorscheme solarized
" colorscheme gruvbox
colorscheme one
" ////////////////////////////////////////////////////


" ////////////////////////////////////////////////////
" /////              Shortcut Keys              //////
" ////////////////////////////////////////////////////
"
" F2 : open(close) NERDTree
" F3 : NERDTree source to the root directory
map <silent> <F2> :NERDTreeToggle<CR> 
map <silent> <F3> :NERDTreeFind<CR>

" F4 : lights-out
" F5 : lights-up
map <silent> <F4> :Limelight<CR> 
map <silent> <F5> :Limelight!<CR>

" Ctrl + a : visual the whole document
" Ctrl + x : cut the visual block to systerm clipboard
" Ctrl + c : copy the visual block to systerm clipboard
" Ctrl + v : paste the systerm clipboard after the cursor
nmap <C-a> ggVG 
vmap <C-x> "+x 
vmap <C-c> "+y 
nmap <C-v> "+gp

" Ctrl + f : find
vmap <silent> <C-f> "1y/<C-r>1<CR>

" Ctrl + \ : comment(uncomment) all visual rows
map <C-\> \ci

" Ctrl + up   : scroll up 1 row
" Ctrl + down : scroll down 1 row
" Ctrl + b    : scroll back 4 row
" Ctrl + f    : scroll forward 4 row
nmap <silent> <C-up>   :call smooth_scroll#up  (1, 10, 1)<CR>
nmap <silent> <C-down> :call smooth_scroll#down(1, 10, 1)<CR>
nmap <silent> <C-b>    :call smooth_scroll#up  (4, 10, 2)<CR>
nmap <silent> <C-f>    :call smooth_scroll#down(4, 10, 2)<CR>

" Alt + n : switch to buffer n
" Alt + c : close current buffer
" Alt + l : list all buffers
nmap <tab> :bn<cr>
map <A-1> 1gt 
map <A-2> 2gt 
map <A-3> 3gt 
map <A-4> 4gt 
map <A-5> 5gt 
map <A-6> 6gt 
map <A-7> 7gt 
map <A-8> 8gt 
map <A-9> 9gt 
map <silent> <A-0> :tablast<CR> 
map <silent> <A-c> :tabc<CR> 
map <silent> <A-l> :tabs<CR> 
"
" ////////////////////////////////////////////////////


filetype plugin on
let g:rainbow_active = 1
" let g:airline_theme='bubblegum'
" let g:airline_theme='one'
let g:airline_theme='onedark'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_powerline_fonts = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
" set ambiwidth=double "防止特殊符号无法正常显示

set autochdir
set showcmd
set completeopt=preview,menu
set clipboard+=unnamed

set autowrite
set ruler
set cursorline
set nocompatible
set foldcolumn=0
set foldmethod=manual
set foldlevel=3
set foldenable
set showmatch
set matchtime=1

winpos 0 0
set lines=60 columns=120
autocmd GUIEnter * simalt ~x

set cursorline
set showmatch
  
set guifont=DejaVu\ Sans\ mono\ for\ Powerline\ 12  " font
set langmenu=en_US         " menu language
let $LANG='en_US'          " language

set nobackup               " remove backup file
set noundofile             " remove undo file
set noswapfile             " remove swap file

set nowrap                 " display on single line not display long items on next line(not really new line)
set guioptions-=T          " add bottom slide
set guioptions-=m

syntax on                  " open syntax,when open ,user can watch file with color
set number                 " open number display
set encoding=utf-8         " encoding

set tabstop=4              " one table can be used how many space
set shiftwidth=4
set hlsearch               " hightlight on search object
set incsearch              " hightlight when searching 
set ruler                  " display x-y posit of cursor

set autoindent             " indent with previous line
set expandtab
set cindent               " indent for c language,but it use table

set textwidth=0            " whatever the amount of items,don't auto change to new line


"///////////////////////////////////////////////////////////////////////////////////////
let Tlist_Show_One_File=1   
let Tlist_WinWidth=30       
let Tlist_Exit_OnlyWindow=1  
let Tlist_Use_Left_Window=1 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = ["__Tag_List__", "_NERD_tree_"] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" // Set "<F3>" key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = "<F3>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F4>" 

" Open and close all the three plugins on the same time 
nmap <silent> <F8>  :TrinityToggleAll<CR> 

" Open and close the Source Explorer separately 
nmap <silent> <F9>  :TrinityToggleSourceExplorer<CR> 

" Open and close the Taglist separately 
nmap <silent> <F10> :TrinityToggleTagList<CR> 

" Open and close the NERD Tree separately 
nmap <silent> <F11> :TrinityToggleNERDTree<CR> 
"///////////////////////////////////////////////////////////////////////////////////////


"///////////////////////////////////////////////////////////////////////////////////////
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
"///////////////////////////////////////////////////////////////////////////////////////
" (((((( ))))))
" {{{{{{ }}}}}}
" [[[[[[ ]]]]]]
let g:rainbow_conf = {
	\	'guifgs': ['#ff00df', '#ff5f00', '#dfff00', '#5fff5f', '#0087df', '#af00ff'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '',
    \	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}


function Addalways()
	call append(line("."),"always @(posedge clk or negedge rst_n)")
	call append(line(".")+1,"if(!rst_n)")
	call append(line(".")+2,"begin")
	call append(line(".")+3,"end")
endfunction

"iabbrev <= <= #`FFD
"match begin end
let b:match_words='\<begin\>:\<end\>'
let b:match_words='\<class\>:\<endclass\>'
let b:match_words='\<function\>:\<endfunction\>'
let b:match_words='\<task\>:\<endtask\>'
let b:match_words='\<module\>:\<endmodule\>'

" If another buffer tries to replace NERDTree, put it in the other window, and
" bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif




"/////////////////////////////////////////////////////////////
" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"
execute "if ".molokai

hi clear
syntax reset

hi Boolean         guifg=#AE81FF
hi Character       guifg=#E6DB74
hi Number          guifg=#AE81FF
hi String          guifg=#E6DB74
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Cursor          guifg=#000000 guibg=#F8F8F0
hi iCursor         guifg=#000000 guibg=#F8F8F0
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#A6E22E               gui=bold
hi Error           guifg=#E6DB74 guibg=#1E0010
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#A6E22E               gui=bold
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000
hi Function        guifg=#A6E22E
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#C4BE89 guibg=#000000

hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#E6DB74               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi MatchParen      guifg=#000000 guibg=#808080 gui=bold
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
hi Search          guifg=#000000 guibg=#FFE792
" marks
hi SignColumn      guifg=#A6E22E guibg=#232526
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#7E8E91               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#F92672               gui=bold
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#1B1D1E guibg=#1B1D1E
hi TabLine         guibg=#1B1D1E guifg=#808080 gui=none

" if s:molokai_original == 1
   hi Normal          guifg=#F8F8F2 guibg=#272822
   hi Comment         guifg=#75715E
   hi CursorLine                    guibg=#3E3D32
   hi CursorLineNr    guifg=#FD971F               gui=none
   hi CursorColumn                  guibg=#3E3D32
   hi ColorColumn                   guibg=#3B3A32
   hi LineNr          guifg=#BCBCBC guibg=#3B3A32
   hi NonText         guifg=#75715E
   hi SpecialKey      guifg=#75715E
" else
   " hi Normal          guifg=#F8F8F2 guibg=#333333
   " hi Comment         guifg=#7E8E91
   " hi CursorLine                    guibg=#293739
   " hi CursorLineNr    guifg=#FD971F               gui=none
   " hi CursorColumn                  guibg=#293739
   " hi ColorColumn                   guibg=#232526
   " hi LineNr          guifg=#465457 guibg=#232526
   " hi NonText         guifg=#465457
   " hi SpecialKey      guifg=#465457
" endif

"
" Support for 256-color terminal
"
" if &t_Co > 255
   " if s:molokai_original == 1
      hi Normal                   ctermbg=234
      hi CursorLine               ctermbg=235   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   " else
      " hi Normal       ctermfg=252 ctermbg=233
      " hi CursorLine               ctermbg=234   cterm=none
      " hi CursorLineNr ctermfg=208               cterm=none
   " endif
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel        ctermfg=255 ctermbg=242
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=0   ctermbg=222   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81
   if has("spell")
       hi SpellBad                ctermbg=52
       hi SpellCap                ctermbg=17
       hi SpellLocal              ctermbg=17
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=59
   hi CursorColumn                ctermbg=236
   hi ColorColumn                 ctermbg=236
   hi LineNr          ctermfg=250 ctermbg=236
   hi NonText         ctermfg=59

   hi SpecialKey      ctermfg=59

   " if exists("g:rehash256") && g:rehash256 == 1
       hi Normal       ctermfg=252 ctermbg=234
       hi CursorLine               ctermbg=236   cterm=none
       hi CursorLineNr ctermfg=208               cterm=none

       hi Boolean         ctermfg=141
       hi Character       ctermfg=222
       hi Number          ctermfg=141
       hi String          ctermfg=222
       hi Conditional     ctermfg=197               cterm=bold
       hi Constant        ctermfg=141               cterm=bold

       hi DiffDelete      ctermfg=125 ctermbg=233

       hi Directory       ctermfg=154               cterm=bold
       hi Error           ctermfg=222 ctermbg=233
       hi Exception       ctermfg=154               cterm=bold
       hi Float           ctermfg=141
       hi Function        ctermfg=154
       hi Identifier      ctermfg=208

       hi Keyword         ctermfg=197               cterm=bold
       hi Operator        ctermfg=197
       hi PreCondit       ctermfg=154               cterm=bold
       hi PreProc         ctermfg=154
       hi Repeat          ctermfg=197               cterm=bold

       hi Statement       ctermfg=197               cterm=bold
       hi Tag             ctermfg=197
       hi Title           ctermfg=203
       hi Visual                      ctermbg=238

       hi Comment         ctermfg=244
       hi LineNr          ctermfg=239 ctermbg=235
       hi NonText         ctermfg=239
       hi SpecialKey      ctermfg=239
   " endif
" endif

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
endif
"/////////////////////////////////////////////////////////////



"/////////////////////////////////////////////////////////////
" Vim color file
"   This file was generated by Palette
"   http://rubygems.org/gems/palette
"
" Author: Compiled from a handful of different themes
" Notes:  Github color scheme (light)
execute "if ".github

hi clear
syntax reset
if has("gui_running")
    set background=light
endif

hi Normal       guifg=#666666 ctermfg=16   guibg=#F8F8FF ctermbg=231  gui=NONE cterm=NONE
"显然是非特殊语句的高亮
hi DiffAdd      guifg=#003300 ctermfg=22   guibg=#DDFFDD ctermbg=194  gui=NONE cterm=NONE
hi DiffChange   guibg=#ECECEC ctermbg=255  gui=NONE cterm=NONE
hi DiffText     guifg=#000033 ctermfg=17   guibg=#DDDDFF ctermbg=189  gui=NONE cterm=NONE
hi DiffDelete   guifg=#DDCCCC ctermfg=252  guibg=#FFDDDD ctermbg=224  gui=NONE cterm=NONE
hi Folded       guifg=#dc143c ctermfg=244  guibg=#ECECEC ctermbg=255  gui=NONE cterm=NONE
hi LineNr       guifg=#0099cc ctermfg=250  guibg=#ECECEC ctermbg=255  gui=NONE cterm=NONE
"左侧行号颜色
hi NonText      guifg=#808080 ctermfg=244  guibg=#ECECEC ctermbg=255  gui=NONE cterm=NONE
hi VertSplit    guifg=#BBBBBB ctermfg=250  guibg=#BBBBBB ctermbg=250  gui=NONE cterm=NONE
hi StatusLine   guifg=#404040 ctermfg=238  guibg=#BBBBBB ctermbg=250  gui=BOLD cterm=BOLD
hi StatusLineNC guifg=#BBBBBB ctermfg=250  guibg=#ECECEC ctermbg=255  gui=ITALIC cterm=NONE
hi ModeMsg      guifg=#990000 ctermfg=88   gui=NONE cterm=NONE
hi MoreMsg      guifg=#990000 ctermfg=88   gui=NONE cterm=NONE
hi Title        guifg=#EF5939 ctermfg=203  gui=NONE cterm=NONE
hi WarningMsg   guifg=#EF5939 ctermfg=203  gui=NONE cterm=NONE
hi SpecialKey   guifg=#FFFFFF ctermfg=231  guibg=#FF1100 ctermbg=196  gui=ITALIC cterm=NONE
hi MatchParen   guifg=#000000 ctermfg=16   guibg=#CDCDFD ctermbg=189  gui=NONE cterm=NONE
"匹配括号底色
hi Underlined   guifg=#DC143C ctermfg=16   gui=UNDERLINE cterm=UNDERLINE
hi Directory    guifg=#990000 ctermfg=88   gui=NONE cterm=NONE
hi Visual       guifg=#FFFFFF ctermfg=231  guibg=#3465A4 ctermbg=61   gui=NONE cterm=NONE
hi VisualNOS    guifg=#FFFFFF ctermfg=231  guibg=#204A87 ctermbg=24   gui=NONE cterm=NONE
hi IncSearch    guifg=#000000 ctermfg=16   guibg=#CDCDFD ctermbg=189  gui=ITALIC cterm=NONE
hi Search       guifg=#000000 ctermfg=16   guibg=#CDCDFD ctermbg=189  gui=ITALIC cterm=NONE
hi Ignore       guifg=#808080 ctermfg=244  gui=NONE cterm=NONE
hi Identifier   guifg=#0086B3 ctermfg=31   gui=NONE cterm=NONE
hi PreProc    guifg=#0066cc guibg=bg     gui=bold ctermbg=4  ctermfg=14
"include、define的高亮
hi Comment      guifg=#AAAAAA ctermfg=248  gui=ITALIC cterm=NONE
hi Constant     guifg=#177F80 ctermfg=30   gui=NONE cterm=NONE
hi String       guifg=#D81745 ctermfg=161  gui=NONE cterm=NONE
hi Function     guifg=#990000 ctermfg=88   gui=BOLD cterm=BOLD
hi Statement    guifg=#1E90FF guibg=bg     gui=bold ctermbg=bg  ctermfg=14
"return、for、while、switch、break、continue、if语法高亮
hi Type         guifg=#ff5566 ctermfg=60   gui=BOLD cterm=BOLD
"int、void、bool、char等声明的语法高亮
hi Number       guifg=#1C9898 ctermfg=30   gui=NONE cterm=NONE
"数字
hi Todo         guifg=#FFFFFF ctermfg=231  guibg=#990000 ctermbg=88   gui=BOLD cterm=BOLD
hi Special      guifg=#159828 ctermfg=28   gui=BOLD cterm=BOLD
hi rubySymbol   guifg=#960B73 ctermfg=89   gui=NONE cterm=NONE
hi Error        guifg=#F8F8FF ctermfg=231  guibg=#FF1100 ctermbg=196  gui=NONE cterm=NONE
hi Todo         guifg=#F8F8FF ctermfg=231  guibg=#FF1100 ctermbg=196  gui=UNDERLINE cterm=UNDERLINE
hi Label        guifg=#DC143C ctermfg=16   gui=BOLD cterm=BOLD
"case的语法高亮
hi StorageClass guifg=#000000 ctermfg=16   gui=BOLD cterm=BOLD
hi Structure    guifg=#ff5566 ctermfg=16   gui=BOLD cterm=BOLD
"struct结构体(那上面那个应该是class类喽？)
hi TypeDef      guifg=#000000 ctermfg=16   gui=BOLD cterm=BOLD
hi WildMenu     guifg=#7FBDFF ctermfg=111  guibg=#425C78 ctermbg=60   gui=NONE cterm=NONE
hi Pmenu        guifg=#FFFFFF ctermfg=231  guibg=#808080 ctermbg=244  gui=BOLD cterm=BOLD
hi PmenuSel     guifg=#000000 ctermfg=16   guibg=#CDCDFD ctermbg=189  gui=ITALIC cterm=NONE
hi PmenuSbar    guifg=#444444 ctermfg=238  guibg=#000000 ctermbg=16   gui=NONE cterm=NONE
hi PmenuThumb   guifg=#AAAAAA ctermfg=248  guibg=#AAAAAA ctermbg=248  gui=NONE cterm=NONE
hi TabLine      guifg=#404040 ctermfg=238  guibg=#DDDDDD ctermbg=253  gui=NONE cterm=NONE
hi TabLineFill  guifg=#404040 ctermfg=238  guibg=#DDDDDD ctermbg=253  gui=NONE cterm=NONE
hi TabLineSel   guifg=#404040 ctermfg=238  gui=BOLD cterm=BOLD
hi cucumberTags guifg=#333333 ctermfg=236  guibg=#FFFF66 ctermbg=227  gui=BOLD cterm=BOLD
hi htmlTagN     gui=BOLD cterm=BOLD
hi Cursor       guifg=#F8F8FF ctermfg=231  guibg=#444454 ctermbg=238  gui=NONE cterm=NONE
"光标选中部分的底色
hi CursorLine   guibg=#D8D8DD ctermbg=253  gui=NONE cterm=NONE
hi CursorColumn guibg=#D8D8DD ctermbg=253  gui=NONE cterm=NONE

hi link rubyStringDelimiter String
endif
"/////////////////////////////////////////////////////////////



"/////////////////////////////////////////////////////////////
" Vim color file
" Maintainer: Miikka-Markus Leskinen <miikka@leskinen.net>
" First Created: Apr 2005 (Guardian 1)
" Last Update: 31 Jan 2017

" Guardian color scheme, version 2.0

" Rich-syntax colors for coding and other vimming.
" 2017: Guardian 2. Updated for modern Ultra HD monitors. Deeper colors.
execute "if ".guardian2

set background=dark
hi clear
syntax reset

" Colors for the User Interface.

hi Cursor      guibg=#ff4455  guifg=white    gui=bold ctermbg=4 ctermfg=15
hi link CursorIM Cursor
hi Normal      guibg=#101830  guifg=white    gui=none ctermbg=0 ctermfg=15
hi NonText     guibg=#445566  guifg=#ffeecc  gui=bold ctermbg=8 ctermfg=14
hi Visual      guibg=#99cc99  guifg=#334433    gui=none ctermbg=9 ctermfg=15

hi Linenr      guibg=bg          guifg=#aaaaaa  gui=none ctermbg=bg ctermfg=7

hi Directory   guibg=bg          guifg=#337700  gui=none ctermbg=bg ctermfg=10

hi IncSearch   guibg=#0066cc  guifg=white    gui=none ctermbg=1 ctermfg=15
hi link Seach IncSearch

hi SpecialKey  guibg=bg    guifg=fg       gui=none ctermbg=bg ctermfg=fg
hi Titled      guibg=bg    guifg=fg       gui=none ctermbg=bg ctermfg=fg

hi ErrorMsg    guibg=bg    guifg=#ff0000  gui=bold ctermbg=bg ctermfg=12
hi ModeMsg     guibg=bg    guifg=#ffeecc  gui=none ctermbg=bg ctermfg=14
hi link     MoreMsg     ModeMsg
hi Question    guibg=bg    guifg=#ccffcc  gui=bold ctermbg=bg ctermfg=10
hi link     WarningMsg  ErrorMsg

hi StatusLine      guibg=#ffeecc     guifg=black    gui=bold ctermbg=14 ctermfg=0
hi StatusLineNC      guibg=#ff4455     guifg=white    gui=none ctermbg=4  ctermfg=11
hi VertSplit      guibg=#ff4455     guifg=white    gui=none ctermbg=4  ctermfg=11

hi DiffAdd     guibg=#446688  guifg=fg      gui=none ctermbg=1 ctermfg=fg
hi DiffChange  guibg=#558855  guifg=fg      gui=none ctermbg=2 ctermfg=fg
hi DiffDelete  guibg=#884444  guifg=fg      gui=none ctermbg=4 ctermfg=fg
hi DiffText    guibg=#884444  guifg=fg      gui=bold ctermbg=4 ctermfg=fg

" Colors for Syntax Highlighting.

hi Comment  guibg=#334455  guifg=#dddddd  gui=none    ctermbg=8      ctermfg=7

hi Constant    guibg=bg       guifg=white      gui=bold    ctermbg=8      ctermfg=15
hi String      guibg=bg       guifg=#ffffcc  gui=italic  ctermbg=bg  ctermfg=14
hi Character   guibg=bg       guifg=#ffffcc  gui=bold    ctermbg=bg  ctermfg=14
hi Number      guibg=bg       guifg=#bbddff  gui=bold    ctermbg=1   ctermfg=15
hi Boolean     guibg=bg       guifg=#bbddff  gui=none    ctermbg=1   ctermfg=15
hi Float       guibg=bg       guifg=#bbddff  gui=bold    ctermbg=1   ctermfg=15

hi Identifier  guibg=bg    guifg=#55cc55  gui=bold    ctermbg=bg  ctermfg=12
hi Function    guibg=bg    guifg=#ff66aa  gui=bold    ctermbg=bg  ctermfg=12
hi Statement   guibg=bg    guifg=#ffff99  gui=bold    ctermbg=bg  ctermfg=14
"return的语法高亮
hi Conditional guibg=bg    guifg=#ff6666  gui=bold    ctermbg=bg  ctermfg=12
hi Repeat      guibg=bg    guifg=#ff9900  gui=bold    ctermbg=4   ctermfg=14
hi Label       guibg=bg    guifg=#cc99ff  gui=bold    ctermbg=bg   ctermfg=13
hi Operator    guibg=bg    guifg=#ffbb66  gui=bold    ctermbg=6   ctermfg=15
hi Keyword     guibg=bg       guifg=#44ffdd  gui=bold    ctermbg=bg  ctermfg=10
hi Exception   guibg=bg       guifg=#44ffdd  gui=bold    ctermbg=bg  ctermfg=10

hi PreProc      guibg=bg     guifg=#ffbb66    gui=bold ctermbg=4  ctermfg=14
hi Include      guibg=bg     guifg=#99cc99    gui=bold ctermbg=bg ctermfg=10
hi link Define      Include
hi link Macro      Include
hi link PreCondit Include

hi Type          guibg=bg     guifg=#ff5566  gui=bold    ctermbg=bg    ctermfg=12
hi StorageClass      guibg=bg     guifg=#99cc99  gui=bold    ctermbg=bg    ctermfg=10
hi Structure      guibg=bg     guifg=#99ff99  gui=bold    ctermbg=bg    ctermfg=10
hi Typedef      guibg=bg     guifg=#99cc99  gui=italic  ctermbg=bg    ctermfg=10

hi Special      guibg=bg     guifg=#bbddff    gui=bold    ctermbg=1    ctermfg=15
hi SpecialChar      guibg=bg     guifg=#bbddff    gui=bold    ctermbg=1    ctermfg=15
hi Tag          guibg=bg     guifg=#bbddff    gui=bold    ctermbg=1    ctermfg=15
hi Delimiter      guibg=bg     guifg=fg    gui=bold    ctermbg=1    ctermfg=fg
hi SpecialComment guibg=#334455     guifg=#dddddd    gui=italic  ctermbg=1    ctermfg=15
hi Debug      guibg=bg     guifg=#ff9999    gui=none    ctermbg=8    ctermfg=12

hi Underlined guibg=bg guifg=#99ccff gui=underline ctermbg=bg ctermfg=9 cterm=underline

hi Title    guibg=#445566  guifg=white      gui=bold    ctermbg=1      ctermfg=15
hi Ignore   guibg=bg       guifg=#cccccc  gui=italic  ctermbg=bg  ctermfg=8
hi Error    guibg=#ff0000  guifg=white      gui=bold    ctermbg=12  ctermfg=15
hi Todo        guibg=#556677  guifg=#ff0000  gui=bold    ctermbg=1      ctermfg=12

hi htmlH2 guibg=bg guifg=fg gui=bold ctermbg=8 ctermfg=fg
hi link htmlH3 htmlH2
hi link htmlH4 htmlH3
hi link htmlH5 htmlH4
hi link htmlH6 htmlH5
endif
" And finally.
"/////////////////////////////////////////////////////////////


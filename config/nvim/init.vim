
"|  \/  (_) |                        (_)
"| .  . |_| | _____  ___   _ ____   ___ _ __ ___  _ __ ___
"| |\/| | | |/ / _ \/ __| | '_ \ \ / / | '_ ` _ \| '__/ __|
"| |  | | |   <  __/\__ \ | | | \ V /| | | | | | | | | (__
"\_|  |_/_|_|\_\___||___/ |_| |_|\_/ |_|_| |_| |_|_|  \___|
"
"  Author: Mike Hartington
"  repo  : https://github.com/mhartington/dotfiles/
"
"  co-Author: Eyog Yvon Leonce
" Plugins  ------------------------------------------------------------------{{{

" Setup dein {{{
  if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
    call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
    call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
  endif

  set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
  call dein#begin(expand('~/.config/nvim'))

  call dein#add('Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')
"}}}
  " call dein#add('Raimondi/delimitMate')
" system {{{
  call dein#add('matze/vim-move')
  call dein#add('itmammoth/doorboy.vim')
  call dein#add('eugen0329/vim-esearch')
  call dein#add('AndrewRadev/splitjoin.vim')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('AndrewRadev/switch.vim')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('tpope/vim-surround')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('majutsushi/tagbar')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('Konfekt/FastFold')
  call dein#add('mhinz/vim-sayonara')
  call dein#add('mattn/webapi-vim')
  call dein#add('mattn/gist-vim')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('MartinLafreniere/vim-PairTools')
  call dein#add('sjl/vitality.vim')
  call dein#add('simnalamburt/vim-mundo')
" }}}
" UI {{{
  call dein#add('scrooloose/nerdtree')
  call dein#add('Shougo/defx.nvim')
  call dein#add('Yggdroot/indentLine')
  call dein#add('vim-airline/vim-airline')
  call dein#add('drzel/vim-line-no-indicator')
  call dein#add('rakr/vim-one')
  call dein#add('morhetz/gruvbox')
  call dein#add('RRethy/vim-illuminate')
" }}}
" rust {{{
  call dein#add('rust-lang/rust.vim')
  call dein#add('racer-rust/vim-racer')
" }}}
" markdown {{{
  call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
  call dein#add('dhruvasagar/vim-table-mode')
  call dein#add('nelstrom/vim-markdown-folding', {'on_ft': 'markdown'})
  call dein#add('rhysd/vim-grammarous')
  call dein#add('junegunn/goyo.vim')
  call dein#add('euclio/vim-markdown-composer', {'build': 'cargo build --release'})
" }}}
" completion {{{
  call dein#add('Shougo/deoplete.nvim')
  " call dein#add('roxma/nvim-completion-manager')
  " call dein#add('autozimu/LanguageClient-neovim', {
  "       \ 'rev': 'next',
  "       \ 'build': 'bash install.sh',
  "       \ })
  call dein#add('tweekmonster/deoplete-clang2')
  call dein#add('artur-shaik/vim-javacomplete2')
  call dein#add('Shougo/neco-vim')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('ujihisa/neco-look')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#add('Shougo/echodoc.vim')
" }}}
" denite {{{
  call dein#add('Shougo/denite.nvim')
  call dein#add('nixprime/cpsm', {'build': 'PY3=ON ./install.sh'})
  call dein#add('Shougo/neomru.vim')
  call dein#add('chemzqm/denite-extra')
  call dein#add('pocari/vim-denite-gists')
" }}}
" code style {{{
  call dein#add('neomake/neomake')
  call dein#add('sbdchd/neoformat')
  call dein#add('editorconfig/editorconfig-vim')
" }}}
" git {{{{
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-rhubarb')
  call dein#add('jreybert/vimagit', {'on_cmd': ['Magit', 'MagitOnly']})
  call dein#add('sgeb/vim-diff-fold')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('junegunn/gv.vim')
  call dein#add('lambdalisue/gina.vim')
" }}}}
" python{{{
  call dein#add('davidhalter/jedi-vim', {'on_ft': 'python'})
  call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
" }}}
" javascript {{{
  call dein#add('othree/yajs.vim')
  call dein#add('mxw/vim-jsx')
  call dein#add('heavenshell/vim-jsdoc')
  call dein#add('elzr/vim-json')
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('Quramy/vison')
" }}}
" html {{{
  call dein#add('othree/html5.vim')
  call dein#add('mattn/emmet-vim')
  call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'})
  call dein#add('posva/vim-vue')
  call dein#add('skwp/vim-html-escape')
" }}}
" css {{{
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('ap/vim-css-color')
" }}}
" reason {{{
  call dein#add('reasonml-editor/vim-reason-plus')
" }}}
" go {{{
  call dein#add('fatih/vim-go')
" }}}
" java {{{
" }}}
" snippets {{{
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('honza/vim-snippets')
" }}}
" mike hartington#github {{{
  " call dein#add('mhartington/nvim-typescript')
  call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})
  call dein#add('mhartington/oceanic-next')
  call dein#add('mhartington/vim-folds')
  call dein#add('mhartington/nerdtree-git-plugin')
" }}}

" vim auto-save {{{
  call dein#add('vim-scripts/vim-auto-save')
  let g:auto_save = 1  " enable AutoSave on Vim startup
  let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
  let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option
"}}}
"Fuzzy search {{{
"
  call dein#add('ctrlpvim/ctrlp.vim')
  let g:ctrlp_map = '<leader>j'
  "}}}
"Focus mode {{{
  call dein#add('junegunn/goyo.vim')
  call dein#add('amix/vim-zenroom2')
"}}}
" kana#github {{{
call dein#add('kana/vim-textobj-entire')
call dein#add('kana/vim-textobj-user')
" }}}
"vim-wiki {{{
call dein#add('vimwiki/vimwiki')
"}}}
" Has to be last according to docs
call dein#add('ryanoasis/vim-devicons')

if dein#check_install()
  call dein#install()
  let pluginsExist=1
endif

call dein#end()
filetype plugin indent on
" }}}

" System Settings  ----------------------------------------------------------{{{

" Neovim Settings
set termguicolors
set mouse=a
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
set clipboard+=unnamedplus
set pastetoggle=<f6>
set nopaste
autocmd BufWritePre * %s/\s\+$//e
set noshowmode
set noswapfile
set nostartofline
filetype on
set  number
set numberwidth=1
set tabstop=2 shiftwidth=2 expandtab
set conceallevel=0
set virtualedit=
set wildmenu
set laststatus=2
set wrap linebreak nolist
set wildmode=full
set autoread
set updatetime=500
set fillchars+=vert:│
set history=200
" set numberwidth=5
" leader is ,
let mapleader = ','
set undofile
set undodir="$HOME/.VIM_UNDO_FILES"
" Remember cursor position between vim sessions
autocmd BufReadPost *
           \ if line("'\"") > 0 && line ("'\"") <= line("$") |
           \   exe "normal! g'\"" |
           \ endif
           " center buffer around cursor when opening files
autocmd BufRead * normal zz
set complete=.,w,b,u,t,k
autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
set formatoptions+=t
set inccommand=nosplit
set shortmess=atIc
set isfname-==
set spell
let g:indentLine_color_gui = '#343d46'
set scrolloff=999
set sidescrolloff=999
" let g:indentLine_char="⎸"
"
"
if has('termguicolors')
  " let &t_8u = "\<Esc>[58;2;%lu;%lu;%lum"
" Don't need this in xterm-256color, but do need it inside tmux.
" (See `:h xterm-true-color`.)
if &term =~# 'xterm-256color-italic'
  " let &t_8f="\e[38;2;%ld;%ld;%ldm"
  " let &t_8b="\e[48;2;%ld;%ld;%ldm"
  " deus
  " let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  " let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"
" " let &t_Cs = "\e[6m"
" " let &t_Ce = "\e[24m"
"
" let &t_Cs = "\e[4:3m"
" let &t_Ce = "\e[4:0m"
endif
endif
" }}}

" System mappings  ----------------------------------------------------------{{{
"remap down and up to <C-n> and <C-P> to gain advantage on filter cmd history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" No need for ex mode
nnoremap Q <nop>
vnoremap // y/<C-R>"<CR>
" recording macros is not my thing
map q <Nop>
" exit insert, dd line, enter insert
inoremap <c-d> <esc>ddi
" Navigate between display lines
nnoremap <silent><expr> k      v:count == 0 ? 'gk' : 'k'
nnoremap <silent><expr> j      v:count == 0 ? 'gj' : 'j'
nnoremap <silent><expr> <Up>   v:count == 0 ? 'gk' : 'k'
nnoremap <silent><expr> <Down> v:count == 0 ? 'gj' : 'j'

noremap  <silent> <Home> g<Home>
noremap  <silent> <End>  g<End>
inoremap <silent> <Home> <C-o>g<Home>
inoremap <silent> <End>  <C-o>g<End>
" copy current files path to clipboard
nmap cp :let @+= expand("%") <cr>
" Neovim terminal mapping
" terminal 'normal mode'
tmap <esc> <c-\><c-n><esc><cr>
" exit insert, dd line, enter insert
inoremap <c-d> <esc>ddi
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k
" nnoremap K 5k
" this is the best, let me tell you why
" how annoying is that everytime you want to do something in vim
" you have to do shift-; to get :, can't we just do ;?
" Plus what does ; do anyways??
" if you do have a plugin that needs ;, you can just swap the mapping
" nnoremap : ;
" give it a try and you will like it
" nnoremap ; : "not sure that I like.
inoremap <c-f> <c-x><c-f>
" Copy to osx clipboard
vnoremap <C-c> "*y<CR>
vnoremap y "*y<CR>
noremap Y y$
vnoremap y myy`y
vnoremap Y myY`y
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'

" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <c-/> :TComment<cr>
nnoremap <silent> <esc> :noh<cr>
nnoremap <leader>e :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! s:PlaceholderImgTag(size)
  let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
  let [width,height] = split(a:size, 'x')
  execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
  endfunction
command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)
vnoremap <leader>ga <Plug>(EasyAlign)

"}}}"

" Themes, Commands, etc  ----------------------------------------------------{{{
syntax on
let g:one_allow_italics = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
let g:Illuminate_ftblacklist = ['nerdtree', 'gitconfig']

set list
set listchars=tab:‣\ ,trail:·
" colorscheme one
" set background=dark
"}}}

" Code formatting -----------------------------------------------------------{{{

" ,f to format code, requires formatters: read the docs
"
noremap <silent> <leader>f :Neoformat<CR>
let g:standard_prettier_settings = {
            \ 'exe': 'prettier',
            \ 'args': ['--stdin', '--stdin-filepath', '%:p', '--single-quote'],
            \ 'stdin': 1,
            \ }
let g:neoformat_vue_prettier = {
            \ 'exe': 'vue-formatter',
            \ 'stdin': 1,
      \}
            " \ 'args': ['--stdin', '--stdin-filepath', '%:p', '--single-quote'],
  let g:neoformat_zsh_shfmt = {
            \ 'exe': 'shfmt',
            \ 'args': ['-i ' . shiftwidth()],
            \ 'stdin': 1,
            \ }
let g:neoformat_enabled_zsh = ['shfmt']

" }}}

" Fold, gets it's own section  ----------------------------------------------{{{

function! MyFoldText() " {{{
    let line = getline(v:foldstart)
    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
    " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines   ')
    let fillcharcount = windowwidth - len(line)
    " return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines'
    return line . '…'. repeat(" ",fillcharcount)
endfunction " }}}

set foldtext=MyFoldText()

autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

" autocmd FileType vim setlocal fdc=1
set foldlevel=99

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType vim setlocal foldlevel=0

autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99

autocmd FileType css,scss,json setlocal foldmethod=marker
autocmd FileType css,scss,json setlocal foldmarker={,}

autocmd FileType coffee setl foldmethod=indent
let g:xml_syntax_folding = 1
autocmd FileType xml setl foldmethod=syntax

autocmd FileType html setl foldmethod=expr
autocmd FileType html setl foldexpr=HTMLFolds()

" autocmd FileType javascript,typescript,json setl foldmethod=syntax
autocmd FileType javascript,typescript,typescriptreact,json setl foldmethod=syntax

" }}}

" Git -----------------------------------------------------------------------{{{

set signcolumn=yes
let g:conflict_marker_enable_mappings = 0
let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'
let g:gitgutter_sign_removed = '│'
let g:gitgutter_sign_removed_first_line = '│'
let g:gitgutter_sign_modified_removed = '│'
let g:gina#command#blame#formatter#format="%in (%au) %ti"
call gina#custom#command#option(
    \ '/\%(branch\|changes\|grep\|log\|status\)',
    \ '--opener', 'edit'
    \)

call gina#custom#command#option(
      \ 'log', '--group', 'log-viewer'
      \)
" }}}

" NERDTree ------------------------------------------------------------------{{{

map <silent> - :NERDTreeToggle<CR>
augroup ntinit
  autocmd FileType nerdtree call s:nerdtreeinit()
augroup END
function! s:nerdtreeinit() abort
  set nolist
  if !has("gui_running")
    nunmap <buffer> K
    nunmap <buffer> J
    map <silent> <Tab> :call nerdtree#ui_glue#invokeKeyMap("A")<CR>
  endif
endf
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let NERDTreeMinimalUI=1
let NERDTreeHijackNetrw=0

let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = -28
let g:netrw_banner = 0

let NERDTreeCascadeSingleChildDir=0
let NERDTreeCascadeOpenSingleChildDir=0
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
" esearch settings {{{

let g:esearch#cmdline#help_prompt = 1
 let g:esearch#cmdline#dir_icon = ''
 let g:esearch = {
 \ 'adapter':    'ag',
 \ 'backend':    'nvim',
 \ 'use':        ['visual', 'hlsearch', 'last'],
 \}

" }}}

let g:NERDTreeGitStatusIndicatorMap = {
       \ 'Modified'  : '✹',
       \ 'Staged'    : '✚',
       \ 'Untracked' : '✭',
       \ 'Renamed'   : '➜',
       \ 'Unmerged'  : '═',
       \ 'Deleted'   : '✖',
       \ 'Dirty'     : '✗',
       \ 'Clean'     : '✔︎',
       \ 'Ignored'   : '',
       \ 'Unknown'   : '?'
       \ }

"}}}

" Nvim terminal -------------------------------------------------------------{{{

au BufEnter * if &buftype == 'terminal' | :startinsert | endif
autocmd BufEnter term://* startinsert
autocmd TermOpen * set bufhidden=hide

" }}}

" Vim-Devicons --------------------------------------------------------------{{{

let g:NERDTreeGitStatusNodeColorization = 1
" 
let g:webdevicons_enable_denite = 0
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsOS = 'Darwin'
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''

" }}}

" Snipppets -----------------------------------------------------------------{{{

" Enable snipMate compatibility feature.
let g:neosnippet#enable_completed_snippet=0
let g:neosnippet#enable_snipmate_compatibility=0
" let g:neosnippet#enable_conceal_markers=0
" let g:neosnippet#snippets_directory='~/GitHub/ionic-snippets'
" let g:neosnippet#expand_word_boundary = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" " SuperTab like snippets behavior.
"   imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"   \ "\<Plug>(neosnippet_expand_or_jump)"
"   \: pumvisible() ? "\<C-n>" : "\<TAB>"
"   smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"   \ "\<Plug>(neosnippet_expand_or_jump)"
"   \: "\<TAB>"

"}}}

" Deoplete ------------------------------------------------------------------{{{

" enable deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
let g:echodoc_enable_at_startup=1
set splitbelow
set completeopt+=menuone,noinsert,noselect
set completeopt-=preview
" autocmd CompleteDone * pclose

function! Multiple_cursors_before()
  let b:deoplete_disable_auto_complete=2
endfunction
function! Multiple_cursors_after()
  let b:deoplete_disable_auto_complete=0
endfunction
let g:deoplete#file#enable_buffer_path=1
call deoplete#custom#source('buffer', 'mark', 'ℬ')
call deoplete#custom#source('tern', 'mark', '')
call deoplete#custom#source('omni', 'mark', '⌾')
call deoplete#custom#source('file', 'mark', '')
call deoplete#custom#source('jedi', 'mark', '')
call deoplete#custom#source('neosnippet', 'mark', '')
call deoplete#custom#source('LanguageClient', 'mark', '')
call deoplete#custom#source('typescript',  'rank', 630)
call deoplete#custom#source('_', 'matchers', ['matcher_cpsm'])
" call deoplete#custom#source('_', 'sorters', [])
let g:deoplete#omni_patterns = {
      \ 'html': '',
      \ 'css': '',
      \ 'scss': ''
      \}
function! Preview_func()
  if &pvw
    setlocal nonumber norelativenumber
   endif
endfunction
autocmd WinEnter * call Preview_func()
let g:deoplete#ignore_sources = {'_': ['around', 'buffer' ]}

" let g:deoplete#enable_debug = 1
" call deoplete#enable_logging('DEBUG', 'deoplete.log')
" call deoplete#custom#source('typescript', 'is_debug_enabled', 1)
"}}}

" Emmet customization -------------------------------------------------------{{{

" Remapping <C-y>, just doesn't cut it.
function! s:expand_html_tab()
" try to determine if we're within quotes or tags.
" if so, assume we're in an emmet fill area.
 let line = getline('.')
 if col('.') < len(line)
   let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
   if len(line) >= 2
      return "\<C-n>"
   endif
 endif
" expand anything emmet thinks is expandable.
if emmet#isExpandable()
  return emmet#expandAbbrIntelligent("\<tab>")
  " return "\<C-y>,"
endif
" return a regular tab character
return "\<tab>"
endfunction
" let g:user_emmet_expandabbr_key='<Tab>'
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

autocmd FileType html,css,scss,typescript.tsx imap <silent><buffer><expr><tab> <sid>expand_html_tab()
let g:user_emmet_mode='a'
let g:user_emmet_complete_tag = 0
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,typescript.tsx EmmetInstall
"}}}

" Language Client -----------------------------------------------------------{{{

" let g:LanguageClient_diagnosticsEnable = 1

let g:LanguageClient_serverCommands = {
  \ 'reason': ['ocaml-language-server', '--stdio'],
  \ 'ocaml': ['ocaml-language-server', '--stdio']
  \ }
  " \ 'scss': ['css-languageserver', '--stdio'],
  " \ 'css': ['css-languageserver', '--stdio'],
  " \ 'html': ['html-languageserver','--stdio'],
  " \ 'typescript': ['typescript-language-server', '--stdio'],
"}}}

" Denite --------------------------------------------------------------------{{{

let s:menus = {}
call denite#custom#option('_', {
      \ 'prompt': '❯',
      \ 'winheight': 10,
      \ 'updatetime': 1,
      \ 'auto_resize': 0,
      \ 'highlight_matched_char': 'Underlined',
      \ 'highlight_mode_normal': 'CursorLine',
      \ 'reversed': 1,
      \})
call denite#custom#option('TSDocumentSymbol', {
      \ 'prompt': ' @' ,
      \})
call denite#custom#option('TSWorkspaceSymbol', {
      \ 'prompt': ' #' ,
      \})

call denite#custom#source('file_rec', 'vars', {
      \'command': ['rg', '--files', '--glob', '!.git'],
      \'sorters':['sorter_sublime'],
      \'matchers': ['matches_cpsm']
      \})
"     \ 'command': ['ag', '--follow','--nogroup','--hidden', '--column', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'node_modules'

call denite#custom#source('grep', 'vars', {
      \'command': ['rg'],
      \'default_opts': ['-i', '--vimgrep'],
      \'recursive_opts': [],
      \'pattern_opt': [],
      \'separator': ['--'],
      \'final_opts': [],
      \})

nnoremap <silent> <c-p> :Denite file_rec<CR>
nnoremap <silent> <leader>h :Denite help<CR>
nnoremap <silent> <leader>v :Denite vison<CR>
nnoremap <silent> <leader>c :Denite colorscheme<CR>
nnoremap <silent> <leader>b :Denite buffer<CR>
nnoremap <silent> <leader>a :Denite grep:::!<CR>
nnoremap <silent> <leader>u :call dein#update()<CR>
nnoremap <silent> <Leader>i :Denite menu:ionic <CR>
call denite#custom#map('insert','<C-n>','<denite:move_to_next_line>','noremap')
call denite#custom#map('insert','<C-p>','<denite:move_to_previous_line>','noremap')
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
  \ [ '.git/', '.ropeproject/', '__pycache__/',
  \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
call denite#custom#var('menu', 'menus', s:menus)
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"}}}

" Ionic denite source -------------------------------------------------------{{{

function! Ionic(job) abort
  if a:job ==# "serve"
    enew!
    let filename = 'Ionic:\ '. a:job
    call termopen('ionic '. a:job)
    exe 'file 'filename
    startinsert
  else
    let platform = input('platform: ')
    enew!
    let filename = 'Ionic:\ '. a:job
    call termopen('ionic '. a:job . ' ' . platform)
    exe 'file 'filename
    startinsert
  endif
endfunction

function ExitHandle()
  echom self
endfunction

let s:menus.ionic = {
  \ 'description' : 'some rando ionic stuff',
  \}
let s:menus.ionic.command_candidates = [
  \[' serve', 'call Ionic("serve")' ],
  \[' run device', 'call Ionic("run")'],
  \[' emulate device', 'call Ionic("emulate")'],
  \]
"}}}

" Navigate between vim buffers and tmux panels ------------------------------{{{

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
tmap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
tmap <C-;> <C-\><C-n>:TmuxNavigatePrevious<cr>

"}}}

" vim-airline ---------------------------------------------------------------{{{
let g:webdevicons_enable_airline_statusline = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#mike#enabled = 0
set hidden
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 0
let g:airline_symbols.branch = ''
let g:airline_theme='oceanicnext'
"
cnoreabbrev x Sayonara
tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
nmap <leader>, :bnext<CR>
tmap <leader>, <C-\><C-n>:bnext<cr>
nmap <leader>. :bprevious<CR>
tmap <leader>. <C-\><C-n>:bprevious<CR>
tmap <leader>1  <C-\><C-n><Plug>AirlineSelectTab1
tmap <leader>2  <C-\><C-n><Plug>AirlineSelectTab2
tmap <leader>3  <C-\><C-n><Plug>AirlineSelectTab3
tmap <leader>4  <C-\><C-n><Plug>AirlineSelectTab4
tmap <leader>5  <C-\><C-n><Plug>AirlineSelectTab5
tmap <leader>6  <C-\><C-n><Plug>AirlineSelectTab6
tmap <leader>7  <C-\><C-n><Plug>AirlineSelectTab7
tmap <leader>8  <C-\><C-n><Plug>AirlineSelectTab8
tmap <leader>9  <C-\><C-n><Plug>AirlineSelectTab9
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
  let g:airline#extensions#branch#format = 0
  let g:airline_detect_spelllang=0
  let g:airline_detect_spell=0
  let g:airline#extensions#hunks#enabled = 0
  let g:airline#extensions#wordcount#enabled = 0
  let g:airline#extensions#whitespace#enabled = 0
  let g:airline_section_c = '%f%m'
  let g:airline_section_x = ''
  " let g:airline_section_y = '%{WebDevIconsGetFileFormatSymbol()}'
  let g:airline_section_y = ''
  let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0
  let g:airline_section_z = '%l:%c'
  " let g:airline_section_z = '%{LineNoIndicator()} :%2c'
  let g:airline#parts#ffenc#skip_expected_string=''
  " let g:line_no_indicator_chars = [' ', '▁', '▂', '▃', '▄', '▅', '▆', '▇', '█']
  " let g:line_no_indicator_chars = ['⎺', '⎻', '⎼', '⎽', '_']
  let g:airline_mode_map = {
        \ 'n' : '',
        \ 'i' : '',
        \ 'R' : '',
        \ 'v' : '',
        \ 'V' : '',
        \ 'c' : '',
        \ 's' : '',
        \ 'S' : '',
        \ ''  : '',
        \ 't' : '',
        \}
  let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 ',
        \}

"}}}

" Linting -------------------------------------------------------------------{{{

  call neomake#configure#automake({
  \ 'BufWritePost': {'delay': 0},
  \ 'BufWinEnter': {},
  \ 'TextChanged': {},
  \ 'InsertLeave': { },
  \ }, 1000)
  " call neomake#configure#automake({
  " \ 'BufWritePost': {},
  " \ }, 0)

  let g:ale_sign_error = '•'
  let g:ale_sign_warning = '•'
  let g:airline#extensions#ale#error_symbol='• '
  let g:airline#extensions#ale#warning_symbol='•  '
  let g:airline#extensions#neomake#error_symbol='• '
  let g:airline#extensions#neomake#warning_symbol='•  '

  " let g:neomake_typescript_tsc_tempfile_enabled = 0
  " let g:neomake_typescript_tslint_tempfile_enabled = 0
  let g:neomake_warning_sign = {'text': '•'}
  let g:neomake_error_sign = {'text': '•'}
  let g:neomake_info_sign = {'text': '•'}
  let g:neomake_message_sign = {'text': '•'}

  hi link ALEError SpellBad
  hi link ALEWarning SpellBad
  " Write this in your vimrc file
  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_enter = 0
  " let g:neomake_verbose = 3
"}}}

" MarkDown ------------------------------------------------------------------{{{

  noremap <leader>TM :TableModeToggle<CR>
  let g:table_mode_corner="|"
  let g:markdown_fold_override_foldtext = 0
  let g:neomake_markdown_proselint_maker = {
      \ 'errorformat': '%W%f:%l:%c: %m',
      \ 'postprocess': function('neomake#postprocess#generic_length'),
      \}
  let g:neomake_markdown_enabled_makers = ['alex', 'proselint']
  let g:markdown_syntax_conceal = 0

  let g:neoformat_markdown_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_markdown = ['prettier']

"}}}

" MultiCursor ---------------------------------------------------------------{{{

  let g:multi_cursor_exit_from_visual_mode=0
  let g:multi_cursor_exit_from_insert_mode=0
"}}}

" Javascript ----------------------------------------------------------------{{{

  " let $NVIM_NODE_LOG_FILE='nvim-node.log'
  " let $NVIM_NODE_LOG_LEVEL='warn'
  " let $NVIM_NODE_HOST_DEBUG=1

  " autocmd FileType typescript.tsx setlocal commentstring=
  " call tcomment#type#Define('typescriptreact', '{/* %s */}')
  " call tcomment#type#Define('typescript.tsx_block',       '{/* %s */}')
  " call tcomment#type#Define('typescript.tsx_inline',      '{/* %s */}')
  let g:neoformat_javascript_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_javascript = ['prettier']
  autocmd FileType vue syntax sync fromstart

  let g:jsx_ext_required = 0
  let g:neomake_javascript_enabled_makers = []
  let g:jsx_ext_required = 1
  let g:jsdoc_allow_input_prompt = 1
  let g:jsdoc_input_description = 1
  let g:jsdoc_return=0
  let g:jsdoc_return_type=0

  let g:tern#command = ['tern']
  let g:tern#arguments = ['--persistent']
  let g:tern_map_keys=1

  autocmd FileType typescript,typescriptreact setl omnifunc=TSOmnicFunc
  " let g:neomake_typescript_enabled_makers = ['tslint']
  let g:nvim_typescript#max_completion_detail=50
  let g:nvim_typescript#completion_mark=''
  let g:nvim_typescript#javascript_support=1
  let g:nvim_typescript#expand_snippet=0
  " let g:nvim_typescript#vue_support=1
  let g:nvim_typescript#diagnosticsEnable=1
  map <silent> <leader>gd :TSDoc <cr>
  map <silent> <leader>gt :TSType <cr>
  map <silent> <leader>gtd :TSTypeDef <cr>
  map <silent> <leader>@ :Denite -buffer-name=TSDocumentSymbol TSDocumentSymbol <cr>
  map <silent> <leader># :Denite -buffer-name=TSWorkspaceSymbol TSWorkspaceSymbol <cr>
  map <silent> <leader>ti :TSImport <cr>
  nnoremap <m-Enter> :TSGetCodeFix<CR>

  let g:neomake_typescript_enabled_makers = []
  let g:neomake_vue_enabled_makers = []
  let g:neoformat_typescript_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_typescript = ['prettier']
  let g:neoformat_typescriptreact_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_typescriptreact = ['prettier']
  " let g:neomake_typescript_enabled_makers = ['nvim_ts']
  let g:nvim_typescript#kind_symbols = {
      \ 'keyword': 'keyword',
      \ 'class': '',
      \ 'interface': '',
      \ 'script': 'script',
      \ 'module': '',
      \ 'local class': 'local class',
      \ 'type': '',
      \ 'enum': '',
      \ 'enum member': '',
      \ 'alias': '',
      \ 'type parameter': 'type param',
      \ 'primitive type': 'primitive type',
      \ 'var': '',
      \ 'local var': '',
      \ 'property': '',
      \ 'let': '',
      \ 'const': '',
      \ 'label': 'label',
      \ 'parameter': 'param',
      \ 'index': 'index',
      \ 'function': '',
      \ 'local function': 'local function',
      \ 'method': '',
      \ 'getter': '',
      \ 'setter': '',
      \ 'call': 'call',
      \ 'constructor': '',
      \}


  let s:menus.typescript = {
    \ 'description' : 'typescript commands',
    \}
  let s:menus.typescript.command_candidates = [
    \['Get Type', 'TSType' ],
    \['Get Doc', 'TSDoc'],
    \['Edit Project Config', 'TSEditConfig'],
    \['Restart Server', 'TSRestart'],
    \['Start Server', 'TSStart'],
    \['Stop Server', 'TSStop'],
    \]


  let g:neoformat_json_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_json = ['prettier']
  let g:vim_json_syntax_conceal = 0

" }}}

" Java ----------------------------------------------------------------------{{{

  autocmd FileType java setlocal omnifunc=javacomplete#Complete
  " let g:deoplete#sources#clang#libclang_path="/usr/local/Cellar/llvm/HEAD-74479e8/lib/libclang.dylib"
  " let g:deoplete#sources#clang#clang_header="/usr/bin/clang"
"}}}

" HTML ----------------------------------------------------------------------{{{

  let g:neoformat_enabled_vue = ['prettier']
  let g:neomake_html_enabled_makers = []
  let g:neoformat_enabled_html = ['htmlbeautify']

" }}}

" Go ------------------------------------------------------------------------{{{

  let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
  let g:go_version_warning = 0

"}}}

" CSS -----------------------------------------------------------------------{{{

  let g:neoformat_scss_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_scss = ['prettier']
  let g:neomake_scss_enabled_makers = ['sasslint']

"}}}

" Lua -----------------------------------------------------------------------{{{

"}}}

" Python --------------------------------------------------------------------{{{
  " let g:python_host_prog = '/usr/bin/python2'
  let g:loaded_python_provider = 1
  let g:python3_host_prog = '/usr/bin/python3'
  " let $NVIM_PYTHON_LOG_FILE='nvim-python.log'
  let g:jedi#auto_vim_configuration = 0
  let g:jedi#documentation_command = "<leader>k"
  let g:jedi#completions_enabled = 0
  let g:jedi#force_py_version=3
" }}}

" Rust ----------------------------------------------------------------------{{{
  let g:racer_cmd = '/Users/mhartington/.cargo/bin/racer'
  " let g:racer_experimental_completer = 1

"}}}

"vim-wiki --------------------------------------------------------------{{{
 let wiki_1 = {}
 let wiki_1.path = '~/Documents/Development/wiki/'
 let wiki_1.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
"  let wiki_1.html_template = '~/public_html/template.tpl'
"  let wiki_2  = {}
"  let wiki_2.path  = '~/wiki/'
" "}}}
" goyo------------------------------------------------------------------------------{{{
  map <leader>z :Goyo<cr>
 "}}}
let g:tagbar_left=1
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ],
	\ 'sort' : 0
\ }
" let g:tagbar_type_typescript = {
"   \ 'ctagstype': 'typescript',
"   \ 'kinds': [
"     \ {'short' : 'e', 'long' : 'enums',      'fold' : 1, 'stl' : 0},
"     \ {'short' : 'f', 'long' : 'function',  'fold' : 1, 'stl' : 0},
"     \ {'short' : 't', 'long' : 'typealias',       'fold' : 0, 'stl' : 1},
"     \ {'short' : 'M', 'long' : 'Module', 'fold' : 0, 'stl' : 0},
"     \ {'short' : 'I', 'long' : 'import',    'fold' : 0, 'stl' : 0},
"     \ {'short' : 'i', 'long' : 'interface',  'fold' : 0, 'stl' : 1},
"     \ {'short' : 'C', 'long' : 'class',     'fold' : 0, 'stl' : 1},
"     \ {'short' : 'm', 'long' : 'methods',     'fold' : 0, 'stl' : 1},
"     \ {'short' : 'p', 'long' : 'property',      'fold' : 0, 'stl' : 1},
"     \ {'short' : 'v', 'long' : 'variable',   'fold' : 0, 'stl' : 1},
"     \ {'short' : 'c', 'long' : 'const',     'fold' : 0, 'stl' : 0},
"     \ ]
"   \ }
"
	autocmd FileType defx call s:defx_my_settings()
	function! s:defx_my_settings() abort
	  " Define mappings
	  nnoremap <silent><buffer><expr> <CR>
	  \ defx#do_action('open')
	  nnoremap <silent><buffer><expr> K
	  \ defx#do_action('new_directory')
	  nnoremap <silent><buffer><expr> N
	  \ defx#do_action('new_file')
	  nnoremap <silent><buffer><expr> h
	  \ defx#do_action('cd', ['..'])
	  nnoremap <silent><buffer><expr> ~
	  \ defx#do_action('cd')
	  nnoremap <silent><buffer><expr> <Space>
	  \ defx#do_action('toggle_select') . 'j'
    setl nonumber
	endfunction

" set laststatus=2
" "   ~define function for filename
" function! FileName()
"   let ext=tolower(expand("%:e"))
"   return ext
" endfunction
"
" function! LinterStatus() abort
"   " let l:counts = ale#statusline#Count(bufnr(''))
"   "
"   " let l:all_errors = l:counts.error + l:counts.style_error
"   " let l:all_non_errors = l:counts.total - l:all_errors
"
"   return printf(
"         \   ' %d  %d  ',
"         \   'test',
"         \   'test'
"         \)
" endfunction
"
" "set numberwidth=4
" set statusline=
" set statusline+=\ %{}
" set statusline+=\ %{LinterStatus()}
" " set statusline+=\ %04l
" "set statusline+=\ •\ %3c
" "set statusline+=\ •\ %3p%%
" "set statusline+=\ \ \ %.30F\ %{WebDevIconsGetFileTypeSymbol()}
" "set statusline+=\ •\ %t\ %{WebDevIconsGetFileTypeSymbol()}
" " set statusline+=\ \ \ %t
" "set statusline+=\ \ %{toupper(mode())}
"
" "set statusline+=\ %02p%%
" "set statusline+=\:\%04l
"
" "set statusline+=\ •\ %l
" set statusline+=\ %.40F
" "set statusline+=:\%-4c
" "set statusline+=%#ErrorMsg#
" "set statusline+=\ %{getbufvar(bufnr('%'),'&mod')?'':'\ '}
"
"
" set statusline+=%=
" "set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" "set statusline+=\ \|\ %{&fileformat}
" "set statusline+=\ \|\ %y
" set statusline+=%l
" set statusline+=\:
" set statusline+=\%c
" " set statusline+=\ %y

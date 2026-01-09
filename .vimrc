" ============================
" Plugin Manager Initialization
" ============================
call plug#begin('~/.vim/plugged')
" File Explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Start screen
Plug 'mhinz/vim-startify'
" Commenting
Plug 'tpope/vim-commentary'
" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Auto-pairs
Plug 'jiangmiao/auto-pairs'
" Visual Undo Tree
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
" Tagbar
Plug 'preservim/tagbar', {'on': 'TagbarToggle'}
" Linting
Plug 'dense-analysis/ale'
" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Language Support
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'arzg/vim-sh'
Plug 'stephpy/vim-yaml'
Plug 'github/copilot.vim'
" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
" Smooth Scrolling
Plug 'terryma/vim-smooth-scroll'
" Terminal
Plug 'kassio/neoterm'
" Text manipulation
Plug 'tpope/vim-surround'
" Color Scheme
Plug 'sainnhe/everforest'
call plug#end()
autocmd VimEnter * silent! delcommand Windows
autocmd VimEnter * command! -nargs=* W
" ============================
" General Settings
" ============================
let mapleader = " "
syntax on
filetype plugin indent on
set completeopt=menuone,noinsert,noselect
set number
set relativenumber
set mouse=a
set cursorline
set signcolumn=yes
set scrolloff=5
set showcmd
set ruler
set foldmethod=syntax
set foldlevel=99
set undofile
set undodir=~/.vim/undodir
set undolevels=10000
set undoreload=10000
set clipboard=unnamed,unnamedplus
if !isdirectory($HOME."/.vim/undodir")
    call mkdir($HOME."/.vim/undodir", "p", 0700)
endif
if has('termguicolors')
  set termguicolors
endif
" ============================
" COC.NVIM VS Code-like Setup with Enhanced Completion
" ============================
set updatetime=300
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <expr> <C-y> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"
" Use Tab for next placeholder
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : coc#expandableOrJumpable() ? "\<Plug>(coc-snippets-expand-jump)" : "\<Tab>"
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'
inoremap <S-Tab> <C-d>
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <silent><expr> <C-@> coc#refresh()
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <silent><expr> <Esc> pumvisible() ? "\<C-e>\<Esc>" : "\<Esc>"
inoremap <silent><expr> <C-CR> pumvisible() ? coc#_select_confirm() : "\<C-CR>"
" Snippet expansion and jump
imap <C-j> <Plug>(coc-snippets-expand-jump)
vmap <C-j> <Plug>(coc-snippets-select)
" Navigate through snippet placeholders
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Rename symbol
nmap <F2> <Plug>(coc-rename)
nmap <leader>rn <Plug>(coc-rename)
" Start with GitHub Copilot disabled
let g:copilot_enabled = 0
let g:copilot_toggle = 1
" Map ` in normal mode to toggle Copilot on/off
nnoremap ` :call ToggleCopilot()<CR>
function! ToggleCopilot()
  if g:copilot_toggle
    let g:copilot_enabled = 0
    let g:copilot_toggle = 0
    echo "Copilot OFF"
  else
    let g:copilot_enabled = 1
    let g:copilot_toggle = 1
    echo "Copilot ON"
  endif
endfunction
" Show documentation
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
nnoremap <silent> K :call ShowDocumentation()<CR>
nnoremap <silent> <C-k><C-i> :call ShowDocumentation()<CR>
" Diagnostics navigation
nmap <silent> <C-k><C-n> <Plug>(coc-diagnostic-next)
nmap <silent> <C-k><C-p> <Plug>(coc-diagnostic-prev)
" Highlight symbol under cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
" COC extensions with enhanced completion support
let g:coc_global_extensions = [
\ 'coc-clangd',
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-pyright',
\ 'coc-html',
\ 'coc-css',
\ 'coc-prettier',
\ 'coc-pairs',
\ 'coc-snippets'
\]
" Enable snippet completion
let g:coc_preferences_snippetSupport = 1
let g:coc_preferences_includeText = 1
" Format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Apply codeAction to the selected region
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Code actions
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
" Show signature help while typing
inoremap <silent><expr> <C-s> coc#start()
" ============================
" Key Mappings
" ============================
" Commenting
nmap cc <Plug>Commentary
xmap cc <Plug>Commentary
" Move line up/down in normal mode
nnoremap <C-S-Up>   :m .-2<CR>==
nnoremap <C-S-Down> :m .+1<CR>==
" Move selected lines up/down in visual mode
xnoremap <C-S-Up>   :m '<-2<CR>gv=gv
xnoremap <C-S-Down> :m '>+1<CR>gv=gv
" File explorer & fuzzy finder
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>ff :Files<CR>
" Window movement
nnoremap <A-Left>  <C-w>h
nnoremap <A-Right> <C-w>l
nnoremap <A-Up>    <C-w>k
nnoremap <A-Down>  <C-w>j
nnoremap <leader>sw <C-w>r
" Terminal escape
tnoremap <C-n><C-n> <C-\><C-n>
" Smooth scroll
noremap <silent> <S-Down>  :call smooth_scroll#down(5, 5, 2)<CR>
noremap <silent> <S-Up>    :call smooth_scroll#up(5, 5, 2)<CR>
noremap <silent> <S-Right> 5zl
noremap <silent> <S-Left>  5zh
" Line movement (duplicate removed, keeping the consistent ones above)
nnoremap <C-S-Down> :m .+1<CR>==
nnoremap <C-S-Up> :m .-2<CR>==
xnoremap <C-S-Down> :m '>+1<CR>gv=gv
xnoremap <C-S-Up> :m '<-2<CR>gv=gv
" Custom shell commands
nnoremap <leader>nn :!norm_dir %<CR>
nnoremap <leader>zz :!cleaner ~<CR>
nnoremap <leader>za :!clean <CR>
nnoremap <leader>push :!push %<CR>
" ============================
" Plugin Settings
" ============================
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"
let g:smooth_scroll_hide_cursor = 1
" ALE
let g:ale_linters = {
\   'python': ['pylsp'],
\   'c': ['clangd'],
\   'cpp': ['clang++'],
\   'sh': ['shellcheck'],
\}
let g:ale_fixers = {
\   'python': ['black'],
\   'sh': ['shfmt'],
\}
let g:ale_fix_on_save = 1
" ============================
" Airline
" ============================
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'
let g:airline_enable_branch = 1
let g:airline_enable_filetype = 1
" ============================
" Startify
" ============================
let g:webdevicons_enable_startify = 1
let g:startify_list_order = ['commands', 'sessions', 'files', 'dir']
let g:startify_commands = [
      \ { 'f': [ 'Find Files (FZF)', 'Files' ] }
      \ ]
let g:startify_custom_header = [
      \ '===========================================================',
      \ '██████      ██████     ██████████████████████████',
      \ '██████      ██████     ██████████████████████████',
      \ '██████      ██████     ██████              ██████',
      \ '██████      ██████     ██████              ██████',
      \ '██████      ██████                         ██████',
      \ '██████      ██████                         ██████',
      \ '██████      ██████     Vim                 ██████',
      \ '██████████████████                         ██████',
      \ '██████████████████       ████████████████████████',
      \ '██████████████████       ████████████████████████',
      \ '            ██████       ██████',
      \ '            ██████       ████████████████████████',
      \ '            ██████       ████████████████████████'
      \ ]
autocmd VimEnter * if argc() == 0 | Startify | endif
" ============================
" Colors and Highlights
" ============================
let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1
colorscheme everforest
highlight Normal       ctermbg=NONE guibg=NONE
highlight LineNr       guifg=#40506B guibg=#1F2430
highlight CursorLine   guibg=#2B3345
highlight Comment      guifg=#6B9DD9 gui=italic
highlight Constant     guifg=#7FD97F
highlight String       guifg=#7FD97F
highlight Identifier   guifg=#7FD97F
highlight Keyword      guifg=#4C72B8 gui=bold
highlight Function     guifg=#7FD6D1
highlight Statement    guifg=#4C72B8 gui=bold
highlight Type         guifg=#C87FC7
highlight Special      guifg=#E05172
highlight Error        guifg=#E05172
highlight WarningMsg   guifg=#E68B5C
highlight Todo         guifg=#F0D87D gui=bold
highlight CursorLineNr guifg=#F7FAFD guibg=#2B3345 gui=bold
highlight Search       guibg=#7FD6D1 guifg=#1F2430
highlight IncSearch    guibg=#E05172 guifg=#1F2430
highlight Visual       guibg=#40506B guifg=NONE
highlight VertSplit    guifg=#40506B guibg=#1F2430
highlight StatusLine   guibg=#2B3345 guifg=#F7FAFD
" Override Everforest theme colors
autocmd ColorScheme everforest highlight Pmenu      guibg=#2b3339 guifg=#d3c6aa
autocmd ColorScheme everforest highlight PmenuSel   guibg=#3c474d guifg=#d3c6aa gui=bold
autocmd ColorScheme everforest highlight PmenuSbar  guibg=#3c474d
autocmd ColorScheme everforest highlight PmenuThumb guibg=#a7c080

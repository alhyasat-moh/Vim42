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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
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
\ 'coc-snippets',
\ 'coc-go'
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
\   'go': ['gopls', 'golint', 'govet'],
\}
let g:ale_fixers = {
\   'python': ['black'],
\   'sh': ['shfmt'],
\   'go': ['gofmt'],
\}
let g:ale_fix_on_save = 1
" Don't remove unused imports automatically
let g:ale_go_goimports_options = ''
let g:ale_go_gofmt_options = ''

" vim-go settings - Enhanced syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_string_spellcheck = 0
let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_diagnostic_warnings = 1
let g:go_fmt_command = "goimports"
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
" Disable vim-go auto format to avoid conflicts with ALE
let g:go_fmt_autosave = 0
let g:go_imports_autosave = 0
let g:go_mod_fmt_autosave = 0
" Disable vim-go's mappings to avoid conflicts with COC
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0

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
let g:everforest_better_performance = 1
let g:everforest_transparent_background = 0
let g:everforest_dim_inactive_windows = 1
colorscheme everforest

" Make Everforest even darker
let g:everforest_colors_override = {'bg0': ['#0D1117', '232'], 'bg1': ['#161B22', '233'], 'bg2': ['#1F2937', '235']}

highlight Normal       ctermbg=NONE guibg=#0D1117
highlight LineNr       guifg=#6B7280 guibg=#0D1117
highlight CursorLine   guibg=#161B22
highlight Comment      guifg=#8B949E gui=italic
highlight Constant     guifg=#A5D6A7
highlight String       guifg=#A5D6A7
highlight Identifier   guifg=#90CAF9
highlight Keyword      guifg=#9FA8DA gui=bold
highlight Function     guifg=#81D4FA
highlight Statement    guifg=#9FA8DA gui=bold
highlight Type         guifg=#F48FB1
highlight Special      guifg=#EF5350
highlight Error        guifg=#EF5350 guibg=#3D1F1F
highlight WarningMsg   guifg=#FFB74D
highlight Todo         guifg=#FFD54F gui=bold
highlight CursorLineNr guifg=#FFFFFF guibg=#161B22 gui=bold
highlight Search       guibg=#80CBC4 guifg=#0D1117
highlight IncSearch    guibg=#EF5350 guifg=#FFFFFF
highlight Visual       guibg=#2D3748 guifg=NONE
highlight VertSplit    guifg=#2D3748 guibg=#0D1117
highlight StatusLine   guibg=#1F2937 guifg=#E5E7EB
highlight SignColumn   guibg=#0D1117
highlight Pmenu        guibg=#1F2937 guifg=#E5E7EB
highlight PmenuSel     guibg=#374151 guifg=#FFFFFF gui=bold
highlight PmenuSbar    guibg=#374151
highlight PmenuThumb   guibg=#6B7280

" ============================
" Enhanced Go Syntax Highlighting Colors - Adjusted for Dark Background
" ============================
" Override base colors for Go - Brighter, more vibrant colors
autocmd FileType go highlight String       guifg=#A9DC76                 " Bright Green - strings
autocmd FileType go highlight Identifier   guifg=#78DCE8                 " Bright Cyan - variable names  
autocmd FileType go highlight Function     guifg=#A9DC76                 " Bright Green - functions
autocmd FileType go highlight Type         guifg=#FFB86C                 " Bright Orange - types
autocmd FileType go highlight Keyword      guifg=#FF6AC1 gui=bold        " Hot Pink - keywords
autocmd FileType go highlight Statement    guifg=#FF6AC1 gui=bold        " Hot Pink - statements
autocmd FileType go highlight Constant     guifg=#FFD866                 " Bright Yellow - constants
autocmd FileType go highlight Special      guifg=#FF6188 gui=bold        " Bright Red - special

" Go-specific syntax groups - Brighter colors
autocmd FileType go highlight goPackage        guifg=#FF6AC1 gui=bold     " Hot Pink
autocmd FileType go highlight goImport         guifg=#FF6AC1 gui=bold     " Hot Pink
autocmd FileType go highlight goVar            guifg=#FF6AC1 gui=bold     " Hot Pink
autocmd FileType go highlight goConst          guifg=#FF6AC1 gui=bold     " Hot Pink
autocmd FileType go highlight goDeclaration    guifg=#FF6AC1 gui=bold     " Hot Pink
autocmd FileType go highlight goType           guifg=#FFB86C gui=bold     " Bright Orange
autocmd FileType go highlight goTypeName       guifg=#FFB86C gui=bold     " Bright Orange
autocmd FileType go highlight goSignedInts     guifg=#FFB86C              " Bright Orange
autocmd FileType go highlight goUnsignedInts   guifg=#FFB86C              " Bright Orange
autocmd FileType go highlight goFloats         guifg=#FFB86C              " Bright Orange
autocmd FileType go highlight goFunction       guifg=#A9DC76 gui=bold     " Bright Green
autocmd FileType go highlight goFunctionCall   guifg=#78DCE8              " Bright Cyan
autocmd FileType go highlight goMethodCall     guifg=#78DCE8              " Bright Cyan
autocmd FileType go highlight goBuiltins       guifg=#FF6188 gui=bold     " Bright Red
autocmd FileType go highlight goStruct         guifg=#FFD866 gui=bold     " Bright Yellow
autocmd FileType go highlight goInterface      guifg=#AB9DF2 gui=italic   " Purple
autocmd FileType go highlight goField          guifg=#78DCE8              " Bright Cyan
autocmd FileType go highlight goOperator       guifg=#FF6AC1              " Hot Pink

" Override Everforest theme colors for completion menu
autocmd ColorScheme everforest highlight Pmenu      guibg=#1F2937 guifg=#E5E7EB
autocmd ColorScheme everforest highlight PmenuSel   guibg=#374151 guifg=#FFFFFF gui=bold
autocmd ColorScheme everforest highlight PmenuSbar  guibg=#374151
autocmd ColorScheme everforest highlight PmenuThumb guibg=#6B7280



" Show function signature automatically while typing
autocmd CursorHoldI * silent call CocActionAsync('showSignatureHelp')


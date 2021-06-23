set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

call plug#begin('~/.vim/plugged')

" Yes, I am a sneaky snek now
Plug 'ambv/black'

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/lsp-status.nvim'
  Plug 'nvim-lua/diagnostic-nvim'
  Plug 'sbdchd/neoformat'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/nvim-compe'
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
" Markdown setup
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" tabular plugin is used to format tables
Plug 'godlygeek/tabular'
" JSON front matter highlight plugin
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'


" Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/galaxyline.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'airblade/vim-gitgutter'
" Learning
Plug 'vim-pandoc/vim-pandoc-syntax'
" if you don't have node and yarn, use pre build
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}


"Plug 'tjdevries/nlua.nvim'
"Plug 'tjdevries/lsp_extensions.nvim'

" Tagbar
Plug 'majutsushi/tagbar'

" Neovim Tree shitter
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'nvim-treesitter/playground'
"Plug 'nvim-treesitter/completion-treesitter'

" Debugger Plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" THANKS BFREDL
"Plug '/home/mpaulson/personal/contextprint.nvim'
"Plug '/home/mpaulson/personal/af-pluth-pluth'
"CSS colors
Plug 'ap/vim-css-color'


Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug 'gruvbox-community/gruvbox'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bfrg/vim-cpp-modern'
Plug 'tpope/vim-projectionist'


" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'lewis6991/gitsigns.nvim'


"  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE
"  TOOOOOOOOOOOOO
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
" Plug '/home/mpaulson/personal/VimDeathmatch/client'
" HARPOON !!
Plug 'ThePrimeagen/harpoon'
Plug 'ThePrimeagen/git-worktree.nvim'


Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'


" prettier
Plug 'sbdchd/neoformat'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
"Lua line
"Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'mkitt/tabline.vim'
Plug 'chrisbra/csv.vim'
" Which Key
"Plug 'folke/which-key.nvim'






" Colors

call plug#end()



" let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]
"lua require("lua/adrian")
"lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
let g:python3_host_prog=expand('/gpfs/projects/rjh/adrian/anaconda3/bin/python3')

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
nnoremap <Leader>cpu a%" PRIu64 "<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <silent> <Leader>b :TagbarToggle<CR>

" greatest remap ever
vnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d



" vim TODO
nmap <C-S> <Plug>BujoAddnormal
imap <C-S> <Plug>BujoAddinsert
nmap <C-Q> <Plug>BujoChecknormal
imap <C-Q> <Plug>BujoCheckinsert


let g:cujo#todo_file_path = $HOME . "/.cache/bujo"


inoremap <C-c> <esc>

fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun

" ES
com! W w
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END



autocmd BufWritePre *.cc lua vim.lsp.buf.formatting_sync(nil,100)
autocmd BufWritePre *.h lua vim.lsp.buf.formatting_sync(nil,100)
autocmd BufWritePre *.py execute ':Black'
"-- lsp provider to find the cursor word definition and reference
"noremap <silent> vh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
"-- or use command LspSagaFinder
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0
nnoremap <M-m> :MarkdownPreview<CR>



augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END

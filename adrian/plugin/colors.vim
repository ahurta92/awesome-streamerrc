let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:theprimeagen_colorscheme = "gruvbox"
fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:theprimeagen_colorscheme])
    else
        " TODO: What the way to use g:theprimeagen_colorscheme
        colorscheme gruvbox
    endif

    highlight ColorColumn ctermbg=0 guibg=grey
    highlight Normal guibg=none
    highlight LineNr guifg=#ff8659
    highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
syntax on
packadd! dracula_pro
let g:agh_colorscheme = "dracula_pro"
fun! ColorMyDracula()
    let g:dracula_italic = 1
    let g:dracula_bold = 1
    let g:dracula_undercurl = 1
    let g:dracula_colorterm = 0
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:dracula_inverse = 0

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:agh_colorscheme])
    else
        " TODO: What the way to use g:theprimeagen_colorscheme
        colorscheme dracula_pro
    endif

    highlight Normal guibg=none
    highlight LineNr guifg=#ff8659
    highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
"call ColorMyPencils()
call ColorMyDracula()



" Vim with me
nnoremap <leader>vwm :call ColorMyPencils()<CR>
nnoremap <leader>cmd :call ColorMyDracula()<CR>
nnoremap <leader>vwb :let g:theprimeagen_colorscheme =

"

lua require("adrian")
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>

nnoremap <leader>vrc :lua require('adrian.telescope').search_dotfiles()<CR>
nnoremap <leader>gtm :lua require('adrian.telescope').search_madness()<CR>
nnoremap <leader>gtT :lua require('adrian.telescope').search_testing()<CR>
"nnoremap <leader>va :lua require('adrian.telescope').anime_selector()<CR>
"nnoremap <leader>vc :lua require('adrian.telescope').chat_selector()<CR>
nnoremap <leader>gc :lua require('adrian.telescope').git_branches()<CR>

" Using lua functions
 nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
 nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
 nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
 nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

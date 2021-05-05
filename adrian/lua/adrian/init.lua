
require("adrian.telescope")
require("adrian.lsp")
require("adrian.harpoon")
require("adrian.galaxyline")
require("adrian.whichkey")
require("adrian.git-worktree")
--require("adrian.statusline")
-- require('colorbuddy').colorscheme('gruvbuddy')
-- require("adrian.nordic")
require("adrian.compe-config")
--require("adrian.lua-line")
--require("adrian.options")

P = function(v)
	print(vim.inspect(v))
	return v
end



if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end




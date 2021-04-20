local lspconfig = require('lspconfig')
require'lspconfig'.ccls.setup{on_attach=require'compe'.on_attach}
require'lspconfig'.pyls.setup{}
local on_attach = require'compe'.on_attach


vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)

lspconfig.ccls.setup {
  init_options = {
	  compilationDatabaseDirectory = "build";
    index = {
      threads = 8;
    };
  }
}



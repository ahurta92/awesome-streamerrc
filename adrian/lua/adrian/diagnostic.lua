
require("nvim-ale-diagnositc")

  vim.lsp.diagnostic.on_publish_diagnostics, {
	  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    underline = false,
    virtual_text = false,
    signs = true,
    update_in_insert = false,
)
  }

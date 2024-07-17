local lsp_zero = require('lsp-zero')


lsp_zero.on_attach(function(client, bufnr)
lsp_zero.default_keymaps({buffer = bufnr})
end)
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	'eslint',
  },
  handlers = {
    function(server_name)
      require('lspconfig').clangd.setup({})
      require('lspconfig').cmake.setup({})
      require('lspconfig').rust_analyzer.setup({})
      require('lspconfig').pyright.setup({})
    end,
  },
})

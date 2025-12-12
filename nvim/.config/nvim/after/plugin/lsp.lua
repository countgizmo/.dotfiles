local cmp = require('cmp')

cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Tab>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  })
})

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
  }
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP: Go to definition" })
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references fname_width=50<cr>")
vim.keymap.set("n", "gn", "<cmd>Telescope lsp_references fname_width=50<cr>")
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end)
vim.keymap.set("n", "<leader>vwd", "<cmd>Telescope diagnostics<cr>")
vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help() end)

vim.keymap.set({ 'n', 'x' }, 'gq', function()
  vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
end)


vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("zls", {
  cmd = { "zls" },
  filetypes = { "zig", "zir" },
  root_markers = {'build.zig', '.git'},
  capabilities = capabilities
})

vim.lsp.config("clojure_lsp", {
  root_markers = {'deps.edn'},
})


vim.lsp.config('sourcekit', {
  cmd = {'/Library/Developer/CommandLineTools/usr/bin/sourcekit-lsp'}
});

vim.diagnostic.config({
  virtual_text = false,
  underline = true,
})

-- Disables diagnostics for Conjure log buffer
vim.api.nvim_create_autocmd('DiagnosticChanged', {
  pattern = {"conjure-log-*"},
  callback = function(args)
    local diagnostics = args.data.diagnostics

    if (diagnostics[1] ~= nil) then
      local bufnr = diagnostics[1]["bufnr"]
      local namespace = diagnostics[1]["namespace"]
      vim.diagnostic.disable(bufnr)
      vim.diagnostic.reset(namespace, bufnr)
    end
  end,
})

vim.lsp.enable({"zls", "clojure_lsp"})


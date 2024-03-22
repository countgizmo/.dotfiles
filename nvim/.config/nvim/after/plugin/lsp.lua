local lsp = require('lsp-zero')
lsp.preset('recommended')

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    -- ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<Tab>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  })
})

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  }
})

lsp.set_preferences({
  sign_icons = {}
})

lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }
  lsp.default_keymaps({ buffer = bufnr })

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references fname_width=50<cr>", opts)
  vim.keymap.set("n", "gn", "<cmd>Telescope lsp_references fname_width=50<cr>", opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vwd", "<cmd>Telescope diagnostics<cr>", opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)

  vim.keymap.set({ 'n', 'x' }, 'gq', function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
  end, opts)
end)

  require('mason').setup({})
  require('mason-lspconfig').setup({
    ensure_installed = {'tsserver', 'eslint', 'lua_ls', 'clojure_lsp'},

    handlers = {
      lsp.default_setup,
    },
  })


lsp.setup()

local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}

lspconfig.zls.setup {
  on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    require('completion').on_attach()
  end
}

lspconfig.sourcekit.setup {
  cmd = {'/Library/Developer/CommandLineTools/usr/bin/sourcekit-lsp'}
}

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

vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('countgizmo/yank_highlight', { clear = true }),
    desc = 'Highlight on yank',
    callback = function()
        -- Setting a priority higher than the LSP references one.
        vim.highlight.on_yank { higroup = 'Visual', priority = 250 }
    end,
})

vim.api.nvim_exec(
[[
let s:baleia = luaeval("require('baleia').setup { line_starts_at = 3 }")
autocmd BufWinEnter conjure-log-* call s:baleia.automatically(bufnr('%'))
]],
true)

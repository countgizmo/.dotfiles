
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.clipboard = "unnamedplus"

vim.opt.updatetime = 50

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.list = true
vim.opt.listchars = {
  tab = '→ ',
  trail = '∙'
}

-- so that `` is visible in markdown files
vim.opt.conceallevel = 0

vim.opt.showmode = false

-- Commit message lengtth guideline
-- Will also make the text wrap
vim.cmd "autocmd FileType gitcommit setlocal tw=70"
vim.cmd "autocmd FileType gitcommit setlocal cc=+1"

-- tell Conjure to not strip ANSI sequences
vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 0

--vim.api.nvim_create_autocmd({"BufEnter", "BufNew"}, {
--  pattern = {"*.wiki"},
--  callback = function()
--  end,
--})

vim.cmd "autocmd FileType vimwiki call pencil#init()"

vim.g.vimwiki_list = {
  {path =  '~/Documents/vimwiki',
   auto_diary_index = 1}
}

vim.opt.spelllang = "en_us"
vim.opt.spell = false

function ToggleSpellCheck()
    vim.opt.spell = not(vim.opt.spell:get())
end

-- Zig autoformatting disabled
vim.g["zig_fmt_autosave"] = 0

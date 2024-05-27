vim.keymap.set("n", "<leader>pv", "<cmd>NvimTreeFindFileToggle<cr>")
local tree = require("nvim-tree").setup()

if tree then
  tree.NvimTreeClose()
end

require("telescope").setup {
  defaults = {
    --path_display={"smart"},
    fname_width = 50,
    layout_strategy = 'vertical',
    layout_config = {
      center = {
        height = 0.7,
        width = 0.9,
        preview_cutoff = 0,
      },
      vertical = {
        height = 0.9,
        width = 0.9,
        preview_height = 0.6,
      }
    },
  },
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      theme = "dropdown",
      previewer = false,
      mappings = {
        i = {
          ["<c-d>"] = "delete_buffer",
        }
      }
    }
  },
}


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set("n", "<c-t>", "<cmd>Telescope live_grep<cr>")
vim.keymap.set('n', '<leader>ch', "<cmd>lua ClojureEditing()<cr>")
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require("lazy").setup({
  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    version = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { -- If encountering errors, see telescope-fzf-native README for installation instructions
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },

      -- Useful for getting pretty icons, but requires a Nerd Font.
      { 'nvim-tree/nvim-web-devicons' },
    }
  },

  -- Themes
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  'morhetz/gruvbox',
  'folke/tokyonight.nvim',
  'blazkowolf/gruber-darker.nvim',
  {
    'mcchrish/zenbones.nvim',
    dependencies = {'rktjmp/lush.nvim'}
  },
  'sainnhe/everforest',
  {
    "cpplain/flexoki.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  'NLKNguyen/papercolor-theme',
  'shaunsingh/solarized.nvim',
  'karoliskoncevicius/distilled-vim',
  {
    "yorik1984/newpaper.nvim",
    priority = 1000,
    config = true,
  },

  {
    'tadaa/vimade',
    opts = {
      ncmode = 'windows',
      fadelevel = 0.9,
      recipe = { 'minimalist', {animate = true} },
    }
  },

  -- Random
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  'mbbill/undotree',
  'smithbm2316/centerpad.nvim',

  -- Git
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',
  'sindrets/diffview.nvim',

  -- LSP
  'neovim/nvim-lspconfig',
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },

  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-nvim-lua',

  -- SQL
  'tpope/vim-dadbod',

  {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'}
  },


  'folke/which-key.nvim',
  'nvim-tree/nvim-tree.lua',

  {
    'echasnovski/mini.files',
    dependencies = {'nvim-tree/nvim-web-devicons'}
  },

  'preservim/vim-pencil',

  -- Terminal codes (for colorful log output)
  { 'm00qek/baleia.nvim', version = 'v1.3.0' },

  { "Olical/nfnl", ft = "fennel" },
  -- Clojure
  'Olical/conjure',
  'guns/vim-sexp',
  'tpope/vim-sexp-mappings-for-regular-people',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  {'guns/vim-clojure-highlight', ft = 'clojure'},
  {'clojure-vim/clojure.vim', ft = 'clojure'},
  -- {'https://gitlab.com/invertisment/conjure-clj-additions-cider-nrepl-mw'},

  'vimwiki/vimwiki',

  -- Swift
  'keith/swift.vim',

  -- Zig
  'ziglang/zig.vim',

  -- Go
  'ray-x/go.nvim',
  'fatih/vim-go',

  -- JS Land
  'pangloss/vim-javascript',
  'peitalin/vim-jsx-typescript',

  'tpope/vim-unimpaired',
  'skywind3000/asyncrun.vim',

  {
    "mistweaverco/kulala.nvim",
    keys = {
      { "<leader>Rs", desc = "Send request" },
      { "<leader>Ra", desc = "Send all requests" },
      { "<leader>Rb", desc = "Open scratchpad" },
    },
    ft = { "http", "rest" },
    opts = {
      -- your configuration comes here
      global_keymaps = true,
      global_keymaps_prefix = "<leader>R",
      kulala_keymaps_prefix = "",
    },
  },
})

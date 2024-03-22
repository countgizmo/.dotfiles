require("lazy").setup({
  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'}
  },

  -- Themes
  'morhetz/gruvbox',
  'folke/tokyonight.nvim',
  'blazkowolf/gruber-darker.nvim',
  {
    'mcchrish/zenbones.nvim',
    dependencies = {'rktjmp/lush.nvim'}
  },


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
  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',

      -- Snippets
      'L3MON4D3/LuaSnip',
      -- Snippet Collection (Optional)
      'rafamadriz/friendly-snippets',
    }
  },

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

  -- Toggle comments
  'terrortylor/nvim-comment',

  -- Terminal codes (for colorful log output)
  { 'm00qek/baleia.nvim', version = 'v1.3.0' },

  -- Clojure
  'Olical/conjure',
  'guns/vim-sexp',
  'tpope/vim-sexp-mappings-for-regular-people',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  {'guns/vim-clojure-highlight', ft = 'clojure'},
  {'clojure-vim/clojure.vim', ft = 'clojure'},
  {'https://gitlab.com/invertisment/conjure-clj-additions-cider-nrepl-mw'},

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

  -- Running HTTP requests
  {
    "vhyrro/luarocks.nvim",
    config = function()
      require("luarocks").setup({})
    end,
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup()
    end,
  },

  -- AI
  { 'sourcegraph/sg.nvim', build = 'nvim -l build/init.lua' },

  'tpope/vim-unimpaired',
  'skywind3000/asyncrun.vim',

})

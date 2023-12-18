vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Themes
  use 'morhetz/gruvbox'
  use 'p00f/alabaster.nvim'
  use 'folke/tokyonight.nvim'
  use 'blazkowolf/gruber-darker.nvim'
  use {
    "mcchrish/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    requires = "rktjmp/lush.nvim"
  }

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'mbbill/undotree'
  use 'smithbm2316/centerpad.nvim'

  -- Git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'
  use 'sindrets/diffview.nvim'

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      -- Snippet Collection (Optional)
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- SQL
  use 'tpope/vim-dadbod'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use 'folke/which-key.nvim'
  use 'nvim-tree/nvim-tree.lua'

  use 'preservim/vim-pencil'

  -- Toggle comments
  use 'terrortylor/nvim-comment'

  -- Terminal codes (for colorful log output)
  use { 'm00qek/baleia.nvim', tag = 'v1.3.0' }

  -- Clojure
  use 'Olical/conjure'
  use 'guns/vim-sexp'
  use 'tpope/vim-sexp-mappings-for-regular-people'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use {'guns/vim-clojure-highlight', ft = 'clojure'}
  use {'clojure-vim/clojure.vim', ft = 'clojure'}

  use 'vimwiki/vimwiki'

  -- Swift
  use 'keith/swift.vim'

  -- Zig
  use 'ziglang/zig.vim'

  -- Go
  use 'ray-x/go.nvim'
  use 'fatih/vim-go'

  -- JS Land
  use 'pangloss/vim-javascript'
  use 'peitalin/vim-jsx-typescript'

  -- Running HTTP requests
  use 'rest-nvim/rest.nvim'

  use 'tpope/vim-unimpaired'
  use 'skywind3000/asyncrun.vim'

end)

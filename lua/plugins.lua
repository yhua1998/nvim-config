return {
  {
    "nvimdev/lspsaga.nvim"
  },
  {
    "echasnovski/mini.indentscope"
  },
  {
    "akinsho/toggleterm.nvim"
  },
  {
    "mg979/vim-visual-multi"
  },
  {
    "windwp/nvim-autopairs",
    event = 'InsertEnter',
    opts = {}
  },
  {
    "stevearc/conform.nvim",
  },
  -- theme
  {
    "sainnhe/everforest"
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require 'lualine'.setup {}
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require 'nvim-treesitter.configs'
      configs.setup {
        ensure_installed = { "rust", "lua", "typescript", "javascript", "html", "sql" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      }
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
  },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   main = "ibl",
  --   opts = {},
  -- config = function()
  --   require 'ibl'.setup {}
  -- end
  -- },
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    lazy = false,
    config = function()
      require 'Comment'.setup {}
    end
  },
  {
    "neovim/nvim-lspconfig"
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "hrsh7th/cmp-buffer"
  },
  {
    "hrsh7th/cmp-path"
  },
  {
    "hrsh7th/cmp-cmdline"
  },
  {
    "hrsh7th/nvim-cmp"
  },
  {
    "hrsh7th/cmp-vsnip"
  },
  {
    "hrsh7th/vim-vsnip"
  }
}


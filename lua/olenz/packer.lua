-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }

 use('ThePrimeagen/vim-be-good')
 use('nvim-treesitter/nvim-treesitter-context',{
     enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
     max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
     min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
     line_numbers = true,
     multiline_threshold = 20, -- Maximum number of lines to show for a single context
     trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
     mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
     -- Separator between context and content. Should be a single character string, like '-'.
     -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
     separator = nil,
     zindex = 20, -- The Z-index of the context window
     on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
 })

 use {'kaarmu/typst.vim', ft = {'typst'}} 
  use('nvim-tree/nvim-tree.lua')
end)

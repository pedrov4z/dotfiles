-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
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

  use {
	  "windwp/nvim-autopairs",
	  config = function() require("nvim-autopairs").setup {} end
  }

	use 'neovim/nvim-lspconfig'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use 'ThePrimeagen/vim-be-good'
	use 'ThePrimeagen/harpoon'
	use {
		'YannickFricke/codestats.nvim',
		rocks = "lunajson",
		config = function()
			require('codestats-nvim').setup({
				token = os.getenv('CODESTATS_API_KEY')
			})
		end,
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	use {
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			opts = {}
			-- Other blankline configuration here
			require("indent_blankline").setup(require("indent-rainbowline").make_opts(opts))
		end,
		requires = {
			"TheGLander/indent-rainbowline.nvim",
		},
	}
end)


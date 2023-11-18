return   {
	{"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
		end,
	},
	{"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({automatic_installation=true})
		end,
		},
	{"neovim/nvim-lspconfig",
	config = function()
		require('lspconfig').clangd.setup{}
		require'lspconfig'.lua_ls.setup{}
		require'lspconfig'.tsserver.setup{}
		require'lspconfig'.pyright.setup{}
	end,
	},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"folke/twilight.nvim",
	config = function()
		require('twilight')
	end,
	},
	{"HiPhish/rainbow-delimiters.nvim",
	config = function()
		    require 'rainbow-delimiters.setup'{
			strategy = {
            [''] = require 'rainbow-delimiters'.strategy['local'],
		    },
		        query = {
            [''] = 'rainbow-delimiters'},
	    highlight ={
		                'RainbowDelimiterRed',
            'RainbowDelimiterYellow',
            'RainbowDelimiterBlue',
            'RainbowDelimiterOrange',
            'RainbowDelimiterGreen',
            'RainbowDelimiterViolet',
            'RainbowDelimiterCyan',
	    }
	    }

	    	end,
	},
}

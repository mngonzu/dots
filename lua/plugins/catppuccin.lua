return { "catppuccin/nvim",
	  name = "catppuccin",
	  priority = 1000,
	  config = function()
		require("catppuccin").setup(
		{flavour = Mocha,
		     integrations = {coc_nvim = true,
		     		     native_lsp = {
				     enabled = true,
				     virtual_text = {
			             errors = { "italic" },
 			             hints = { "italic" },
                                     warnings = { "italic" },
                                     information = { "italic" },
  							    },
    underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
    },
    inlay_hints = {
        background = true,
    },
},					nvimtree = true,
					treesitter = true,
					rainbow_delimiters = true,

		     		    }
		})
	end,
}

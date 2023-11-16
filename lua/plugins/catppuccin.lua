return { "catppuccin/nvim", 
	  name = "catppuccin", 
	  priority = 1000, 
	  config = function()
		require("catppuccin").setup(
		{flavour = latte,
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
},
		     		    }
		})
	end,
}

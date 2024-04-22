return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			styles = {
				no_italic = false, -- Force no italic
				no_bold = false, -- Force no bold
				no_underline = false,
				comments = { "italic" },
				conditionals = { "italic" },
				functions = { "underline" },
				keywords = { "bold" },
				booleans = {"bold"},
			},
			-- vim.cmd.colorscheme("catppuccin"),
		})
	end,
}

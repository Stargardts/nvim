return {
	"Wansmer/treesj",
	keys = { { "<leader>m", "<CMD>TSJToggle<CR>" }, "<space>j", "<space>s" },
	cmd = {
		"TSJToggle",
		"TSJAdd",
		"TSJRemove",
		"TSJRename",
		"TSJMove",
		"TSJCopy",
		"TSJSelect",
	},
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("treesj").setup({ iuse_default_keymaps = false })
	end,
}

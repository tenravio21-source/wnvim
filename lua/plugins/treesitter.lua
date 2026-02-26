return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		local configs = require("nvim-treesitter")

		configs.setup({
			ensure_installed = {
				"json",
				"lua",
				"dart",
				"rust",
				"go",
				"markdown",
				"markdown_inline",
				"vim",
				"vimdoc", -- highly recommended for help files
				"query", -- required for many queries to work
			},

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},

			sync_install = false,
			auto_install = false,
		})
	end,
}

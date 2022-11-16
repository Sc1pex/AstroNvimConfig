require("catppuccin").setup({
	flavour = "frappe",
	integrations = {
		treesitter = true,
		telescope = true,
	},
	styles = {
		comments = { "italic" },
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	custom_highlights = function(colors)
		return {
			["@variable"] = { fg = colors.lavender },
		}
	end,
})
vim.api.nvim_command("colorscheme catppuccin")

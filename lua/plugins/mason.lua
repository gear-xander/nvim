return {
	{
		"mason-org/mason.nvim",
		build = ":MasonUpdate",
		config = true,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "mason-org/mason.nvim" },
		opts = {
			ensure_installed = {
				"lua-language-server",
				"pyright",
				"bash-language-server",
				"terraform-ls",
				"stylua",
				"black",
				"shfmt",
				"prettier",
			},
		},
	},
}

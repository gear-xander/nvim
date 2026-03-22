return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
					workspace = { checkThirdParty = false },
				},
			},
		})

		vim.lsp.config("pyright", {})
		vim.lsp.config("bashls", {})
		vim.lsp.config("terraformls", {})

		vim.lsp.enable("lua_ls")
		vim.lsp.enable("pyright")
		vim.lsp.enable("bashls")
		vim.lsp.enable("terraformls")

		vim.keymap.set("n", "gd", vim.lsp.buf.definition)
		vim.keymap.set("n", "K", vim.lsp.buf.hover)
	end,
}

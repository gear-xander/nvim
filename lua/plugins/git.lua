return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "│" },
				change = { text = "│" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "│" },
			},
			signcolumn = true,
			numhl = false,
			linehl = false,
			word_diff = false,

			current_line_blame = true,
			current_line_blame_opts = {
				delay = 300,
				virt_text_pos = "eol",
			},

			on_attach = function(bufnr)
				local gs = require("gitsigns")

				vim.keymap.set("n", "]h", gs.next_hunk, { buffer = bufnr })
				vim.keymap.set("n", "[h", gs.prev_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { buffer = bufnr })
				vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { buffer = bufnr })
			end,
		})
	end,
}

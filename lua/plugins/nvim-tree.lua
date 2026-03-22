return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			view = {
				width = 30,
				side = "left",
			},
			git = {
				enable = true,
				ignore = false,
			},
			renderer = {
				icons = {
					webdev_colors = false,
					show = {
						file = false,
						folder = false,
						folder_arrow = false,
						git = true,
					},
					glyphs = {
						default = "",
						symlink = "",
						folder = {
							default = "",
							open = "",
							empty = "",
							empty_open = "",
						},
						git = {
							unstaged = "•",
							staged = "✓",
							untracked = "•",
							deleted = "✗",
						},
					},
				},
				indent_markers = {
					enable = false,
				},
			},
		})
	end,
}

-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<leader>e", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
		{ "<leader>v", ":Neotree buffers<CR>", desc = "NeoTree open buffers", silent = true },
		{ "<leader>g", ":Neotree float git_status<CR>", desc = "NeoTree git status", silent = true },
	},
	---@module "neo-tree"
	---@type neotree.Config?
	opts = {
		window = {
			position = "right",
			mappings = {
				["P"] = {
					"toggle_preview",
					config = {
						use_float = true,
					},
				},
			},
		},
		filesystem = {
			window = {
				mappings = {
					["<leader>e"] = "close_window",
				},
			},
			filtered_items = {
				always_show = {
					".env",
				},
			},
		},
	},
}

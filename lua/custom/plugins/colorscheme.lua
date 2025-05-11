-- themes
return {
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first

		config = function()
			require("onedarkpro").setup({
				options = {
					cursorline = false, -- Use cursorline highlighting?
					transparency = true, -- Use a transparent background?
					terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
					lualine_transparency = false, -- Center bar transparency?
					highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
				},
				styles = {
					types = "bold",
					methods = "bold",
					numbers = "NONE",
					strings = "NONE",
					comments = "italic",
					keywords = "bold,italic",
					constants = "bold",
					functions = "italic",
					operators = "NONE",
					variables = "bold",
					parameters = "NONE",
					conditionals = "italic",
					virtual_text = "italic",
				},
			})

			vim.cmd("colorscheme onedark")
		end,
		-- somewhere in your config:
	},
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	--
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
	-- 			transparent_background = true, -- disables setting the background color.
	-- 			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
	-- 			term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
	-- 			dim_inactive = {
	-- 				enabled = true, -- dims the background color of inactive window
	-- 				shade = "dark",
	-- 				percentage = 0.15, -- percentage of the shade to apply to the inactive window
	-- 			},
	-- 			no_italic = false, -- Force no italic
	-- 			no_bold = false, -- Force no bold
	-- 			no_underline = false, -- Force no underline
	-- 			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
	-- 				comments = { "italic" }, -- Change the style of comments
	-- 				conditionals = { "italic" },
	-- 				loops = {},
	-- 				functions = {},
	-- 				keywords = { "italic" },
	-- 				strings = {},
	-- 				variables = {},
	-- 				numbers = {},
	-- 				booleans = {},
	-- 				properties = {},
	-- 				types = {},
	-- 				operators = {},
	-- 				-- miscs = {}, -- Uncomment to turn off hard-coded styles
	-- 			},
	-- 			color_overrides = {},
	-- 			custom_highlights = {},
	-- 			default_integrations = true,
	-- 			integrations = {
	-- 				alpha = true,
	-- 				which_key = true,
	-- 				render_markdown = true,
	-- 				neotree = true,
	-- 			},
	-- 		})
	--
	-- 		-- setup must be called before loading
	-- 		vim.cmd.colorscheme("catppuccin")
	-- 	end,
	-- },
}
-- return {
-- 	"shaunsingh/nord.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		-- Example config in lua
-- 		vim.g.nord_contrast = true
-- 		vim.g.nord_borders = false
-- 		vim.g.nord_disable_background = true
-- 		vim.g.nord_italic = false
-- 		vim.g.nord_uniform_diff_background = true
-- 		vim.g.nord_bold = false
--
-- 		-- Load the colorscheme
-- 		require("nord").set()
--
-- 		-- Toggle background transparency
-- 		local bg_transparent = true
--
-- 		local toggle_transparency = function()
-- 			bg_transparent = not bg_transparent
-- 			vim.g.nord_disable_background = bg_transparent
-- 			vim.cmd([[colorscheme nord]])
-- 		end
--
-- 		vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
-- 	end,
-- }

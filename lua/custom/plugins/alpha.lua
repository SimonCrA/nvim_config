return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                  ",
			"                                                  ",
			"                                                  ",
			"                                                  ",
			"                                                  ",
			"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
			"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
			"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
			"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
			"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
			"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
			"                                                  ",
			"                                                  ",
			"                                                  ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "Find file", ":Telescope find_files <CR>"),
			dashboard.button("r", "Recently used files", ":Telescope oldfiles <CR>"),
			dashboard.button("l", "Check Plugins", ":Lazy <CR>"),
			dashboard.button("s", "Settings", ":e ~/.config/nvim/init.lua <CR>"),
			dashboard.button("q", "Quit", ":qa<CR>"),
		}

		-- Set footer
		local lazy_stats = require("lazy").stats() -- Get Lazy.nvim stats
		dashboard.section.footer.val = {
			" ",
			" ",
			" ",
			"If You Don't Take Risks, You Can't Create a Future.",
			" ",
			"                                  - Monkey D. Luffy",
			" ",
			"             Plugins loaded: " .. lazy_stats.loaded .. " / " .. lazy_stats.count,
		}

		dashboard.section.header.opts.position = "center"
		dashboard.section.header.opts.hl = "Include"

		dashboard.section.buttons.opts.hl = "Keyword"
		dashboard.section.footer.opts.position = "center"

		alpha.setup(dashboard.opts)

		vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
	end,
}

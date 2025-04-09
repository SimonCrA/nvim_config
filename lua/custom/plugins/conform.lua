return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "gofumpt", "goimports_reviser", "golines" },
			sh = { "shfmt" }, -- Uses your `-i 4` arg from null-ls
			terraform = { "terraform_fmt" },
			python = { "ruff_format" }, -- Replaces ruff formatting
			svelte = { "prettier-plugin-svelte" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true, -- Fallback to LSP if no formatter
		},
	},
}

-- autoformatting on save
return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
		"jayp0521/mason-null-ls.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local diagnostics = null_ls.builtins.diagnostics
		local formatting = null_ls.builtins.formatting

		-- Only install diagnostics/code actions (formatters are handled by Conform except prettier)
		require("mason-null-ls").setup({
			ensure_installed = {
				"checkmake",
				"eslint_d", -- TS/JS linter
				"prettier",
				-- "ruff",    -- Python linter (if needed)
			},
			automatic_installation = true,
		})

		-- Only enable diagnostics/code actions (no formatting! just for prettier)
		null_ls.setup({
			sources = {
				diagnostics.checkmake,
				formatting.prettier.with({ filetypes = { "svelte", "astro", "html", "json", "yaml", "markdown" } }),
				require("none-ls.diagnostics.eslint"),
				-- Add other diagnostics/code actions here
				-- require("none-ls.diagnostics.ruff"), -- Python linter
			},
			on_attach = function(client, bufnr)
				-- Disable null-ls formatting (Conform will handle it)
				client.server_capabilities.documentFormattingProvider = false
				client.server_capabilities.documentRangeFormattingProvider = false
			end,
		})
	end,
}

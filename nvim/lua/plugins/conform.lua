return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters = {
				clang_format = {
					args = {
						"--style={BasedOnStyle: Google, AlwaysBreakAfterReturnType: All, AllowShortIfStatementsOnASingleLine: false, AlignAfterOpenBracket: Align, BreakBeforeBraces: Stroustrup, ColumnLimit: 95, DerivePointerAlignment: false, IndentWidth: 4, Language: Cpp, PointerAlignment: Right, ReflowComments: true, SpaceBeforeParens: ControlStatements, SpacesInParentheses: false, TabWidth: 4, UseTab: Never, SortIncludes: false}",
					},
				},
			},
			formatters_by_ft = {
				lua = { "stylua" },
				c = { "clang_format" },
				cpp = { "clang_format" },
				go = { "gofumpt" },
			},
		})

		vim.keymap.set("n", "<leader>fm", function()
			require("conform").format({ async = true })
		end, {})
	end,
}

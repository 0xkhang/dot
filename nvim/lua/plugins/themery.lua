return {
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
			require("themery").setup({
				themes = {
					{
						name = "vscode",
						colorscheme = "vscode",
					},
					{
						name = "ef",
						colorscheme = "ef-spring",
					},
					{
						name = "gruber-darker",
						colorscheme = "gruber-darker",
					},
					{
						name = "cyberdream",
						colorscheme = "cyberdream",
					},
					{
						name = "vague",
						colorscheme = "vague",
					},
				},

				vim.keymap.set("n", "<leader>cl", ":Themery<CR>"),
			})
		end,
	},
	-- Lazy
	{
		"blazkowolf/gruber-darker.nvim",
		opts = {
			bold = true,
			invert = {
				signs = true,
				tabline = false,
				visual = false,
			},
			italic = {
				strings = false,
				comments = true,
				operators = false,
				folds = false,
			},
			undercurl = true,
			underline = true,
		},
	},
	{
		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({
				transparent = true, -- Keep this for the main editor
				italic = false,
				bold = false,
				on_highlights = function(highlights, colors)
					-- Make tabline match statusbar colors
					highlights.TabLine = { bg = "#40404a", fg = "#c0c0d5" } -- Inactive tabs (matches StatusLineNC)
					highlights.TabLineSel = { bg = "#50505a", fg = "#ffffff", bold = true } -- Selected tab (matches StatusLine)
					highlights.TabLineFill = { bg = "#40404a" } -- Fill area (matches StatusLineNC bg)

					-- Statusline customization
					highlights.StatusLine = { bg = "#50505a", fg = "#ffffff" }
					highlights.StatusLineNC = { bg = "#40404a", fg = "#c0c0d5" }

					-- Terminal statuslines
					highlights.StatusLineTerm = { bg = "#3a3a45", fg = "#ffffff" }
					highlights.StatusLineTermNC = { bg = "#2a2a35", fg = "#a0a0b5" }
				end,
			})
		end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000000,
		opts = {
			borderless_pickers = true,
			saturation = 0.95,
			cache = true,
			transparent = false,
		},
		init = function()
			-- vim.cmd("colorscheme cyberdream")
			vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "none", ctermbg = "none" })
			vim.api.nvim_set_hl(0, "TroubleNormalNC", { bg = "none", ctermbg = "none" })
			vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "none", ctermbg = "none" })
			vim.api.nvim_set_hl(0, "TroubleNormalNC", { bg = "none", ctermbg = "none" })
			vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#3c4048", bg = "none" })
			vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#7b8496" })
			vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#232429" })
			vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = "#232429" })
			vim.api.nvim_set_hl(0, "TreesitterContextBottom", { bg = "#232429", underline = true })
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff" })
		end,
	},
	{ "oonamo/ef-themes.nvim" },
	{ "Mofiqul/vscode.nvim" },
}

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.winborder = "rounded"

vim.diagnostic.config({
	severity_sort = true,
	jump = { float = true, wrap = true },
	virtual_text = { prefix = "●" },
	signs = { text = { " ", " ", " ", " " } },
})

vim.pack.add({
	"https://github.com/max397574/better-escape.nvim",
	"https://github.com/echasnovski/mini.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main", build = ":TSUpdate" },
	{ src = "https://github.com/Saghen/blink.cmp", version = vim.version.range("*") },
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/j-hui/fidget.nvim",
	"https://github.com/MeanderingProgrammer/render-markdown.nvim",
	"https://github.com/rebelot/kanagawa.nvim",
})

require("better_escape").setup({})

require("mini.basics").setup({ options = { extra_ui = true } })
require("mini.clue").setup({
	triggers = {
		{ mode = { "n", "x" }, keys = "<Leader>" },
		{ mode = { "n", "x" }, keys = "g" },
		{ mode = "n", keys = "<C-w>" },
	},
})
require("mini.diff").setup({})
require("mini.files").setup({})
require("mini.icons").setup({})
require("mini.move").setup({})
require("mini.pairs").setup({})
require("mini.pick").setup({})
require("mini.statusline").setup({})
require("mini.surround").setup({})

require("blink.cmp").setup({
	keymap = {
		preset = "enter",
		["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
		["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
		["<Escape>"] = { "hide", "fallback" },
	},
	completion = {
		list = { selection = { preselect = false, auto_insert = true } },
	},
})

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})

require("fidget").setup({})

require("kanagawa").setup({
	theme = "dragon",
	background = { dark = "dragon" },
	keywordStyle = { italic = false },
	colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
	overrides = function(colors)
		local theme = colors.theme
		local blend_bg = function(color)
			local c = require("kanagawa.lib.color")
			return { fg = color, bg = c(color):blend(theme.ui.bg, 0.95):to_hex() }
		end
		return {
			Pmenu = { link = "NormalFloat", blend = vim.o.pumblend },
			PmenuThumb = { bg = theme.ui.float.fg_border },
			BlinkCmpMenuBorder = { link = "FloatBorder" },
			BlinkCmpMenuSelection = { bg = theme.ui.bg_p1 },
			BlinkCmpLabelDetail = { link = "NormalFloat" },
			BlinkCmpLabelDescription = { link = "NormalFloat" },
			DiagnosticVirtualTextHint = blend_bg(theme.diag.hint),
			DiagnosticVirtualTextInfo = blend_bg(theme.diag.info),
			DiagnosticVirtualTextWarn = blend_bg(theme.diag.warning),
			DiagnosticVirtualTextError = blend_bg(theme.diag.error),
		}
	end,
})

-- theme
vim.cmd.colorscheme("kanagawa")

-- keymaps
vim.keymap.set("n", "<S-h>", ":bprev<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<S-l>", ":bnext<cr>", { desc = "Next buffer" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the below window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the above window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })

vim.keymap.set("n", "<leader><space>", "<cmd>Pick files<cr>", { desc = "Search all files" })
vim.keymap.set("n", "<leader>,", "<cmd>Pick buffers<cr>", { desc = "Search open buffers" })
vim.keymap.set("n", "<leader>/", "<cmd>Pick grep_live<cr>", { desc = "Search in project" })
vim.keymap.set("n", "<leader>sh", "<cmd>Pick help<cr>", { desc = "Search help pages" })

vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics" })

vim.keymap.set("n", "<leader>e", function()
	local buf_name = vim.api.nvim_buf_get_name(0)
	local path = vim.fn.filereadable(buf_name) == 1 and buf_name or vim.fn.getcwd()
	MiniFiles.open(path)
end, { desc = "Open file explorer" })

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local opts = { buffer = event.buf }
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
		vim.keymap.set("n", "<C-.>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	end,
})

-- LSPs
local servers = { "rust_analyzer", "openscad_lsp" }

vim.lsp.config("rust_analyzer", {
	settings = {
		["rust-analyzer"] = {
			cargo = { features = "all" },
			check = { command = "clippy" },
		},
	},
})

for _, server in ipairs(servers) do
	vim.lsp.enable(server)
end

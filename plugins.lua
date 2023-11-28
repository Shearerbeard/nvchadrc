local plugins = {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				-- defaults
				"vim",
				"lua",

				-- config / util / docs
				"bash",
				"json",
				"yaml",
				"toml",
				"csv",
				"markdown",
				"cue",
				"ssh_config",
				"dot",
				"cmake",
				"make",
				"git_config",
				"dockerfile",
				"gitignore",
				"vue",
				"slint",
				"regex",

				-- web dev
				"html",
				"css",
				"javascript",
				"typescript",
				"tsx",
				"json",
				"svelte",

				-- general
				"c",
				"cpp",
				"rust",
				"haskell",
				"python",
				"sql",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- web
				"css-lsp",
				"html-lsp",
				"prettier",
				"svelte-language-server",
				"tailwindcss-language-server",
				"vue-language-server",

				-- docker
				"docker-compose-language-service",
				"dockerfile-language-server",
				"hadolint",

				-- config / util / docs
				"bash-language-server",
				"cuelsp",
				"cmakelint",
				"cmake_format",
				"deno",
				"lua-language-server",
				"luacheck",
				"shellcheck",
				"stylua",
				"vim-language-server",
				"yaml-language-server",

				-- rust
				"rustywind",
				"rust-analyzer",

				-- haskell
				"haskell-language-server",
				"stylish_haskell",

				-- js/ts
				"eslint_d",
				"eslint-lsp",
				"typescript-language-server",
				"vue-language-server",

				-- python
				"black",
				"pylint",
				"pyright",

				-- C/C++
				"clangd",
				"cpplint",
			},
		},
	},
	{
		"toppair/peek.nvim",
		build = "deno task --quiet build:fast",
		keys = {
			{
				"<leader>op",
				function()
					local peek = require("peek")
					if peek.is_open() then
						peek.close()
					else
						peek.open()
					end
				end,
				desc = "Peek (Markdown Preview)",
			},
		},
		opts = { theme = "dark", app = "browser" },
	},
	{
		"charludo/projectmgr.nvim",
		lazy = false, -- important!
	},
}

return plugins

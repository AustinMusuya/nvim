return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",

	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		--main = 'nvim-treesitter.configs', -- Sets main module to use for opts
		-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
		configs.setup({
			ensure_installed = {
				"cpp",
				"c",
				"lua",
				"python",
				"javascript",
				"typescript",
				"vimdoc",
				"vim",
				"regex",
				"terraform",
				"sql",
				"dockerfile",
				"toml",
				"json",
				"java",
				"groovy",
				"go",
				"gitignore",
				"graphql",
				"yaml",
				"make",
				"cmake",
				"markdown",
				"markdown_inline",
				"bash",
				"tsx",
				"css",
				"html",
			},
			-- Autoinstall languages that are not installed
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true, disable = { "ruby" } },
			ignore_install = {},
			modules = {},
		})
	end,
}

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",

	dependencies = {
		"neovim-treesitter/treesitter-parser-registry",
	},

	config = function()
		require("nvim-treesitter").setup({})

		local parser_install = {
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
		}

		require("nvim-treesitter").install(parser_install)

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local buf = args.buf

				-- Enable highlighting
				pcall(vim.treesitter.start, buf)

				-- Enable indentation
				vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

				-- Enable folding
				vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
				vim.wo.foldmethod = "expr"
			end,
		})
	end,
}

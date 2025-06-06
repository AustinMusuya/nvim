return {
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")

		-- Center the ASCII header
		startify.section.header = {
			type = "text",
			val = {
				" ██████╗ ██████╗ ██████╗ ██████╗ ██████╗     ███████╗███████╗██████╗  ██████╗ ",
				"██╔════╝██╔═══██╗██╔══██╗╚════██╗██╔══██╗    ╚══███╔╝██╔════╝██╔══██╗██╔═████╗",
				"██║     ██║   ██║██║  ██║ █████╔╝██████╔╝      ███╔╝ █████╗  ██████╔╝██║██╔██║",
				"██║     ██║   ██║██║  ██║ ╚═══██╗██╔══██╗     ███╔╝  ██╔══╝  ██╔══██╗████╔╝██║",
				"╚██████╗╚██████╔╝██████╔╝██████╔╝██║  ██║    ███████╗███████╗██║  ██║╚██████╔╝",
				" ╚═════╝ ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝    ╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ",
			},
			opts = { position = "center", hl = "Type" },
		}

		-- Center footer
		startify.section.footer = {
			type = "text",
			val = {
				"🚀 Stay focused. Build great things.",
				"📅 " .. os.date("%A, %d %B %Y"),
			},
			opts = { position = "center", hl = "Comment" },
		}

		-- Center top buttons
		startify.section.top_buttons.opts = {
			position = "center",
		}

		-- Center MRU list
		startify.section.mru.opts = {
			position = "center",
		}

		-- Layout arrangement
		startify.config.layout = {
			{ type = "padding", val = 2 },
			startify.section.header,
			{ type = "padding", val = 2 },
			startify.section.top_buttons,
			{ type = "padding", val = 2 },
			startify.section.mru,
			{ type = "padding", val = 2 },
			startify.section.footer,
		}

		alpha.setup(startify.config)
	end,
}

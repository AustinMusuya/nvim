return { 
	"ellisonleao/gruvbox.nvim",
	priority = 1000 ,
	config = function()
  		vim.o.background = "dark" -- or "light"
    		require("gruvbox").setup({
      		-- optional config
      		contrast = "hard", -- "soft" | "medium" | "hard"
      		transparent_mode = true,
    		})
    	vim.cmd("colorscheme gruvbox")
  	end,
}

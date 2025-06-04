return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- optional
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}},
  },
  lazy = false,
  opts = {
    -- any neo-tree options here
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}


-- Set lualine as statusline
-- plugins/lualine.lua
return {
  'nvim-lualine/lualine.nvim',
  dependencies = {'nvim-tree/nvim-web-devicons', },

  config = function()
    local mode = {
      'mode',
      fmt = function(str)
        -- return ' ' .. str:sub(1, 1) -- displays only the first character of the mode
        return ' ' .. str
      end,

       color = function()
    -- Get current mode
    local mode = vim.fn.mode()
    local mode_color = {
      n = { fg = '#ffffff', bg = '#a60000' },  -- Normal = Red
      i = { fg = '#ffffff', bg = '#005f00' },  -- Insert = Green
      v = { fg = '#ffffff', bg = '#5f00af' },  -- Visual = Purple
      [''] = { fg = '#ffffff', bg = '#5f00af' },  -- Visual block
      V = { fg = '#ffffff', bg = '#5f00af' },  -- Visual line
      c = { fg = '#ffffff', bg = '#875f00' },  -- Command = Orange
      R = { fg = '#ffffff', bg = '#870000' },  -- Replace = Dark Red
      t = { fg = '#ffffff', bg = '#005f87' },  -- Terminal = Blue
    }
    return mode_color[mode] or { fg = '#ffffff', bg = '#444444' }  -- Fallback color
  end,
    }


    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = {mode},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
  end
}


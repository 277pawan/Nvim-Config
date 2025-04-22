return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Configure Tokyonight
      require("tokyonight").setup({
        style = "storm", -- Options: storm, moon, night, day
        transparent = true, -- Enable transparent background
        terminal_colors = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
      
      -- Apply the colorscheme
      vim.cmd([[colorscheme tokyonight]])
      
      -- Additional transparency tweaks for UI elements
      vim.cmd([[
        highlight NormalFloat guibg=NONE ctermbg=NONE
        highlight FloatBorder guibg=NONE ctermbg=NONE
        highlight NvimTreeNormal guibg=NONE ctermbg=NONE
        highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
        highlight TelescopeNormal guibg=NONE ctermbg=NONE
        highlight TelescopeBorder guibg=NONE ctermbg=NONE
      ]])
    end,
  },
  
  -- Set LazyVim's default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}

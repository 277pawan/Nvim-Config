return {
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      -- Use Tab for accepting suggestions
      vim.g.copilot_no_tab_map = false

      -- Or use Ctrl+J instead if you want Tab for something else
      -- vim.g.copilot_no_tab_map = true
      -- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end,
  },
}

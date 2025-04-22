
return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = true, -- Enable auto-formatting on save
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      json = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      markdown = { "prettier" },
      yaml = { "prettier" },
    },
  },
}


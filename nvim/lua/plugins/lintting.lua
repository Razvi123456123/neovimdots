return {
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        source = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.clang_format,
        }
      })
      vim.keymap.set('n', "<leader>f", vim.lsp.buf.format, {})
    end,
  },
}

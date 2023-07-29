-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  { "folke/tokyonight.nvim" },
  { "gremble0/yellowbeans.nvim" },
  { "AndrewRadev/splitjoin.vim" },
  { "xiantang/darcula-dark.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "darcula-dark",
    },
  },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = { { "<C-l>", "<cmd>LazyGit<cr>", desc = "LazyGit" } },
  },
}

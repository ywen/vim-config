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
  { "tomtom/tcomment_vim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "yellowbeans",
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
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },
  require("telescope").setup({
    defaults = {
      vimgrep_arguments = {
        "ag",
        "--nocolor",
        "--noheading",
        "--numbers",
        "--column",
        "--smart-case",
        "--silent",
        "--vimgrep",
      },
    },
  }),
}

return {
  "folke/flash.nvim",
  lazy=false,
  opts = {
    labels = "abcdefghijklmnopqrstuwxyz/1234567890",
    modes = {
      char = {
        jump_labels = true,
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump(
      {search = { forward = true, wrap = true, multi_window = false },
    }) end, desc = "flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").jump(
      {search = { forward = false, wrap = false, multi_window = false },
    }) end, desc = "flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  },
}

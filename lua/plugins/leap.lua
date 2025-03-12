return {
  "folke/flash.nvim",
  opts = {
    labels = "abcdefghijklmnopqrstuwxyz/1234567890",
    modes = {
      char = {
        jump_labels = false,
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump(
      {search = { forward = true, wrap = false, multi_window = false },
    }) end, desc = "flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").jump(
      {search = { forward = false, wrap = false, multi_window = false },
    }) end, desc = "flash" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  },
}

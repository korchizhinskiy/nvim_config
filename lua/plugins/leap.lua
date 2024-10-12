return {
  "folke/flash.nvim",
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
      {search = { forward = true, wrap = false, multi_window = false },
    }) end, desc = "flash" },
    { "S", mode = { "n", "x", "o" }, function() require("flash").jump(
      {search = { forward = false, wrap = false, multi_window = false },
    }) end, desc = "flash" },
  },
}

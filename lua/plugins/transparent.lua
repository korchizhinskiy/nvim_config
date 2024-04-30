return {
  {
    "xiyaowong/nvim-transparent",
    event = "BufEnter",
    config = function()
      require("transparent").setup {
        exclude_groups = {
          "CursorLine",
        },
        extra_groups = { -- table/string: additional groups that should be cleared
          -- In particular, when you set it to 'all', that means all available groups
          "BufferLineTabClose",
          "BufferlineBufferSelected",
          "BufferLineFill",
          "BufferLineBackground",
          "BufferLineSeparator",
          "BufferLineIndicatorSelected",
          "HeirlineInactive",
          "NeoTreeNormal",
          "NeoTreeNormalNC",
          "TelescopePrompt",
          "TelescopeNormal",
          "LspFloatWinNormal",
          "NormalFloat",
          "FloatBorder",
          "TelescopeNormal",
          "TelescopeBorder",

          "TelescopePromptTitle",
          "TelescopePromptBorder",
          "TelescopePromptNormal",

          "TelescopeResultsTitle",
          "TelescopeResultsBorder",
          "TelescopeResultsNormal",

          "TelescopePreviewTitle",
          "TelescopePreviewBorder",
          "TelescopePreviewNormal",
        },
      }
    end,
  },
}

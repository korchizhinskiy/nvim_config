return { -- override nvim-cmp plugin
  "nvim-neo-tree/neo-tree.nvim",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local neotree = require "neo-tree"

    -- modify the sources part of the options table
    opts.event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function(_) vim.opt_local.signcolumn = "auto" end,
        handler = function(_) vim.opt_local.relativenumber = true end,
      },
    }
    opts.window = {
      width = 50,
      mappings = {
        F = "find_in_dir",
        n = "close_all_subnodes"
      },
    }
    opts.commands = {
        find_in_dir = function(state)
        local node = state.tree:get_node()
        local path = node.type == "file" and node:get_parent_id() or node:get_id()
        require("telescope.builtin").find_files { cwd = path }
      end

    }
  end,
}

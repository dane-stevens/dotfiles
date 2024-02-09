---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  i = {
    ["<C-s>"] = {"<C-c>:w<CR>", "Save buffer"},
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}
-- more keybinds!
M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():append()
      end,
      "Harpoon: append to list",
    },
    ["<C-e>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      "Harpoon: open window",
    },
  },
}

M.telescope = {
  n = {
    ["<C-p>"] = {
      ":lua require'telescope'.extensions.project.project{ sync_with_nvim_tree = true }<CR>",
      "Telescope: open projects",
      opts = { noremap = true, silent = true}
    },
  },
}

return M

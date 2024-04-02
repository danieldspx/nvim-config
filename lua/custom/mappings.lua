---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- LazyGit remap
    ["<leader>gg"] = { ":LazyGit<CR>", "Open LazyGit" },

    ["<leader>rr"] = {":lua require('renamer').rename()<CR>", "Rename variable"}
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M

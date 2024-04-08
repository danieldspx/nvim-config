---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    
    -- Insert texts
    ["<leader>cl"] = { "i/**  */<Esc>bhi" },
    ["<leader>cb"] = { "i/**<CR><CR><BS>/<Esc>ka<Space>" },

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

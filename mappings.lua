local M = {}

M.disabled = {
  n = {
    ["<C-n>"] = "",
    ["<leader>e"] = "",
  },
}

M.nvimtree = {
  n = {
    -- toggle
    ["<leader>tt"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },

    -- focus
    ["<leader>tf"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.projectManager = {
  n = {
    ["<leader>pp"] = { "<cmd> ProjectMgr<CR>", "Open Projects" }
  }
}

return M

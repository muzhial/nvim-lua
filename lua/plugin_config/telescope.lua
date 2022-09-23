local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("telescope not found")
  return
end

local key_list = {
  i = {
    -- move
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<C-n>"] = "move_selection_next",
    ["<C-p>"] = "move_selection_previous",
    -- history record
    ["<Down>"] = "cycle_history_next",
    ["<Up>"] = "cycle_history_prev",
    -- close window
    -- ["<esc>"] = actions.close,
    ["<C-c>"] = "close",
    -- preview window scrolling
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}

-- local actions = require("telescope.actions")
telescope.setup({
  defaults = {
    -- when open window, initial mode is insert, or normal
    initial_mode = "insert",
    -- vertical , center , cursor
    layout_strategy = "horizontal",
    -- intra window keybindings
    mappings = key_list,
  },
  pickers = {
    find_files = {
      -- theme = "dropdown", -- dropdown, cursor, ivy
    },
  },
  extensions = {},
})

-- pcall(telescope.load_extension, "env")


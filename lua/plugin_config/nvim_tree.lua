-- https://github.com/kyazdani42/nvim-tree.lua
-- local nvim_tree = require'nvim-tree'
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("nvim-tree not found")
  return
end


local list_keys = {
  { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- Ignore (node_modules)
  { key = "i", action = "toggle_ignored" },
  -- Hide (dotfiles)
  { key = ".", action = "toggle_dotfiles" },
  -- file operation
  { key = "<F5>", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  -- entrance next arc
  { key = { "]" }, action = "cd" },
  -- entrance prev arc
  { key = { "[" }, action = "dir_up" },
  -- mac
  { key = "s", action = "open" },
  -- windows
  -- { key = 's', action = 'system_open' },
}


nvim_tree.setup({
  -- not show git status icon
  git = {
    enable = false,
  },
  -- project plugin needed
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  -- hidden dot file and node_modules dir
  filters = {
    dotfiles = true,
    custom = { "node_modules" },
  },
  view = {
    -- default width
    width = 30,
    -- side view director
    side = "left",
    -- hide root folder
    hide_root_folder = false,
    -- custom list keyboard shortcut
    mappings = {
      custom_only = true,
      list = list_keys,
    },
    -- not show line number
    number = false,
    relativenumber = false,
    -- show sign icon
    signcolumn = "yes",
  },
  actions = {
    open_file = {
      resize_window = true,
      -- when opening file, tree closed
      quit_on_open = false,
    },
  },
  -- wsl install -g wsl-open
  -- https://github.com/4U6U57/wsl-open/
  system_open = {
    -- mac
    cmd = "open",
    -- windows
    -- cmd = "wsl-open",
  },
})


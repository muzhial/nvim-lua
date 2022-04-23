vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_custom_footer = { "https://github.com/nshen/learn-neovim-lua" }

vim.g.dashboard_custom_section = {
  a = { description = { "  Projects              " }, command = "Telescope projects" },
  b = { description = { "  Recently files        " }, command = "Telescope oldfiles" },
  c = { description = { "  Edit keybindings      " }, command = "edit ~/.config/nvim/lua/keybindings.lua" },
  d = {
    description = { "  Edit Projects         " },
    command = "edit ~/.local/share/nvim/project_nvim/project_history",
  },
  -- e = { description = { "  Edit .bashrc          " }, command = "edit ~/.bashrc" },
  -- f = { description = { "  Change colorscheme    " }, command = "ChangeColorScheme" },
  -- g = { description = { "  Edit init.lua         " }, command = "edit ~/.config/nvim/init.lua" },
  -- h = { description = {'  Find file          '}, command = 'Telescope find_files'},
  -- i = { description = {'  Find text          '}, command = 'Telescope live_grep'},
}

vim.g.dashboard_custom_header = {
  [[          ▀████▀▄▄              ▄█ ]],
  [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
  [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
  [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
  [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
  [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
  [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
  [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
  [[   █   █  █      ▄▄           ▄▀   ]],
}

vim.g.dashboard_custom_header = {
  [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
  [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
  [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
  [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
  [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
  [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
  [[                                                   ]],
  [[                [ fucking world ]                  ]],
}

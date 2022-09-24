-- basic config
require("basic")
require("keybindings")
require("colorscheme")
require("autocmd")

require("plugins")
require("plugin_config.lualine")
require("plugin_config.nvim_tree")
require("plugin_config.autopairs")
require("plugin_config.telescope")
require("plugin_config.indent_blankline")
require("plugin_config.nvim_treesitter")
require("plugin_config.comment")

require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")


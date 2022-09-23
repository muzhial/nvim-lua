-- uft-8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

-- `jkhl` moving, reserve line
vim.o.scrolloff = 4
vim.o.sidescrolloff = 4

-- relative line num
vim.wo.number = true
vim.wo.relativenumber = false

-- highlight current line
vim.wo.cursorline = true

-- show left sign column
vim.wo.signcolumn = "yes"

-- show right reference line
--vim.wo.colorcolumn = "80"

-- tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.expandtab = true
vim.bo.expandtab = true

-- `< >` shift length
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- align
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- case insensitive
vim.o.ignorecase = true
vim.o.smartcase = true

-- search
vim.o.hlsearch = false
vim.o.incsearch = true

-- cmd height
vim.o.cmdheight = 2

vim.o.autoread = true
vim.bo.autoread = true

-- prohibition of folding line
vim.wo.wrap = false

-- cursor at start or end line, `<Left> <Right>` move next line
vim.o.whichwrap = "<,>,[,]"

-- can hidden modified buffer
vim.o.hidden = true

-- support mouse
vim.o.mouse = "a"

-- prohibit creating backup file
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 300

-- shortcut key press continuous 500ms
-- issue: https://github.com/nshen/learn-neovim-lua/issues/1
vim.o.timeoutlen = 500

-- split window
vim.o.splitbelow = true
vim.o.splitright = true

-- autocomplete not auto selected
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- terminal color style
vim.o.termguicolors = true
vim.opt.termguicolors = true

-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"

-- when autocompleted, show 10 items at most
vim.o.pumheight = 10

-- always show tabline
vim.o.showtabline = 2

-- no longer need vim's mode prompt with enhanced status bar plugin
vim.o.showmode = false

-- config clipboard
vim.opt.clipboard = "unnamedplus"


local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify("installing Pakcer.nvim ...")
  paccker_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1", -- "https://github.com/wbthomason/packer.nvim",
    "https://gitcode.net/mirrors/wbthomason/packer.nvim",
    install_path,
  })
  -- https://github.com/wbthomason/packer.nvim/issues/750
  local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
  if not string.find(vim.o.runtimepath, rtp_addition) then
    vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
  end
  vim.notify("Pakcer.nvim installed")
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("Packer.nvim not installed")
  return
end

packer.startup({
  function(use)
    -- Packer can update itself
    use("wbthomason/packer.nvim")
    --------------------
    -- colorschemes
    --------------------
    -- onedark
    -- use("ful1e5/onedark.nvim")
    use("folke/tokyonight.nvim")
    --------------------
    -- lualine.nvim
    --------------------
    use({
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
    })

    --------------------
    -- nvim-tree.lua
    --------------------
    use({
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons",
    })

    --------------------
    -- nvim-autopairs
    --------------------
    use("windwp/nvim-autopairs")

    --------------------
    -- telescope.nvim
    --------------------
    use({
      "nvim-telescope/telescope.nvim",
      requires = { "nvim-lua/plenary.nvim" },
    })

    -------------------
    -- nvim-treesitter
    -------------------
    use({
      "nvim-treesitter/nvim-treesitter",
    })

    --------------------
    -- indent-blankline.nvim
    -- depended with nvim-treesitter
    --------------------
    use("lukas-reineke/indent-blankline.nvim")

    --------------------
    -- comment
    --------------------
    use("numToStr/Comment.nvim")

    --------------------
    -- LSP
    --------------------
    use({
      "neovim/nvim-lspconfig",
    })
    use("williamboman/nvim-lsp-installer")

    -- complete engine
    use("hrsh7th/nvim-cmp")

    -- complete source
    --use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-nvim-lsp-signature-help")
    -- UI enhancement
    use("onsails/lspkind-nvim")
    --use("tami5/lspsaga.nvim")
    --------------------
    if paccker_bootstrap then
      packer.sync()
    end
  end,

  config = {
    max_jobs = 16,
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
    -- display = {
    -- float window to show
    --   open_fn = function()
    --     return require("packer.util").float({ border = "single" })
    --   end,
    -- },
  }
})


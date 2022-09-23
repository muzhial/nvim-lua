local lsp_installer = require("nvim-lsp-installer")

local servers = {
  --sumneko_lua = require("lsp.config.lua"),
  bashls = require("lsp.conf.bash"),
  --html = require("lsp.config.html"),
  --cssls = require("lsp.config.css"),
  --emmet_ls = require("lsp.config.emmet"),
  --jsonls = require("lsp.conf.json"),
  --tsserver = require("lsp.config.ts"),
  pyright = require("lsp.conf.pyright")

  -- rust_analyzer = require("lsp.lang.rust"),
  -- remark_ls = require("lsp.lang.markdown"),
}

-- auto install Language Servers
for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

lsp_installer.on_server_ready(function(server)
  local config = servers[server.name]
  if config == nil then
    return
  end
  if type(config) == "table" and config.on_setup then
    config.on_setup(server)
  else
    -- usr default args
    server:setup({})
  end
end)


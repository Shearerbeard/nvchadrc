local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "bashls",
  "html",
  "cssls",
  "dagger",
  "yamlls",
  "dockerls",
  "docker_compose_language_service",
  "tsserver",
  "svelte",
  "clangd",
  "rust_analyzer",
  "hls",
  "tailwindcss",
  "pyright",
  "slint_lsp",
}

-- luacheck: globals ipairs
for _, lsp in ipairs(servers) do
  if lsp == "rust_analyzer" then
    lspconfig.rust_analyzer.setup {
      settings = {
        ["rust-analyzer"] = {
          checkOnSave = {
            command = "clippy",
          },
        },
      },
      on_attach = on_attach,
      capabilities = capabilities,
    }
  else
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end

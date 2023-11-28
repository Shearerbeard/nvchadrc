---@type ChadrcConfig
local M = {}

M.ui = { theme = "oxocarbon" }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

function docker_fix()
  local filename = vim.fn.expand "%:t"

  if filename == "docker-compose.yaml" then
    vim.bo.filetype = "yaml.docker-compose"
  elseif filename == "docker-compose.yml" then
    vim.bo.filetype = "yaml.docker-compose"
  elseif filename == "compose.yaml" then
    vim.bo.filetype = "yaml.docker-compose"
  elseif filename == "compose.yml" then
    vim.bo.filetype = "yaml.docker-compose"
  end
end

vim.cmd [[au BufRead * lua docker_fix()]]

return M

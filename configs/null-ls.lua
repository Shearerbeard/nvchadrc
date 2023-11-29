local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local actions = null_ls.builtins.code_actions

local sources = {
  formatting.prettier,
  formatting.eslint_d,
  formatting.rustywind,
  formatting.stylua,
  formatting.rustfmt,
  formatting.black,
  formatting.stylish_haskell,
  formatting.cmake_format,

  lint.pylint,
  lint.cpplint,
  lint.shellcheck,
  lint.eslint_d,
  lint.luacheck,
  lint.cmake_lint,

  actions.eslint_d,
}

null_ls.setup {
  debug = true,
  sources = sources,
}

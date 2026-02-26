rockspec_format = "3.0"
package = "ruby-namespace-copy.nvim"
version = "1.0.0-1"

description = {
  summary = "Copy Ruby class/module namespace to clipboard using Tree-sitter",
  detailed = [[
    A Neovim plugin that uses Tree-sitter to extract and copy the fully qualified
    Ruby class/module namespace at the cursor position to the clipboard. Handles
    nested modules, classes, and scope resolution syntax.
  ]],
  license = "MIT",
  homepage = "https://github.com/matiyas/ruby-namespace-copy.nvim",
  labels = { "neovim", "ruby", "treesitter", "namespace", "clipboard" },
}

dependencies = {
  "lua >= 5.1",
}

source = {
  url = "git://github.com/matiyas/ruby-namespace-copy.nvim.git",
  tag = "v1.0.0",
}

build = {
  type = "builtin",
  copy_directories = { "lua", "plugin" },
}

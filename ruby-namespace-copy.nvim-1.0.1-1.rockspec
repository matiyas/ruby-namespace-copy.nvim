rockspec_format = "3.0"
package = "ruby-namespace-copy.nvim"
version = "1.0.1-1"

description = {
  summary = "Copy Ruby class/module namespace to clipboard using Tree-sitter",
  detailed = [[
    A Neovim plugin that uses Tree-sitter to extract and copy the fully qualified
    Ruby class/module namespace at the cursor position to the clipboard. Handles
    nested modules, classes, and scope resolution syntax (e.g., MyApp::Services::UserCreator).
    Essential for large Ruby/Rails codebases.
  ]],
  license = "MIT",
  homepage = "https://github.com/matiyas/ruby-namespace-copy.nvim",
  issues_url = "https://github.com/matiyas/ruby-namespace-copy.nvim/issues",
  maintainer = "matiyas",
  labels = {
    "neovim",
    "neovim-plugin",
    "ruby",
    "rails",
    "tree-sitter",
    "treesitter",
    "namespace",
    "clipboard",
    "productivity",
    "lua",
  },
}

dependencies = {
  "lua >= 5.1",
}

source = {
  url = "git://github.com/matiyas/ruby-namespace-copy.nvim.git",
  tag = "v1.0.1",
}

build = {
  type = "builtin",
  copy_directories = { "lua", "plugin" },
}

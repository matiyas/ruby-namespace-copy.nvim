# ruby-namespace-copy.nvim

A Neovim plugin that uses Tree-sitter to extract and copy the fully qualified Ruby class/module namespace at the cursor position to the clipboard.

## Core Purpose

When working in large Ruby codebases, you often need to reference the full namespace path of a class or module (e.g., `MyApp::Services::UserCreator`). This plugin automatically traverses the AST to build the complete namespace path and copies it to your clipboard.

## Key Features

- Uses Tree-sitter for accurate AST traversal
- Handles nested modules and classes
- Supports scope resolution syntax (e.g., `class A::B::C`)
- Copies to system clipboard with notification
- Provides both copy and get functions for flexibility

## Requirements

- Neovim >= 0.9.0
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) with Ruby parser installed

## Installation

### lazy.nvim

```lua
{
  "matiyas/ruby-namespace-copy.nvim",
  ft = { "ruby" },
  opts = {},
  keys = {
    {
      "<leader>yn",
      function()
        require("ruby-namespace-copy").copy_namespace()
      end,
      desc = "Yank Ruby namespace",
      ft = "ruby",
    },
  },
}
```

### packer.nvim

```lua
use({
  "matiyas/ruby-namespace-copy.nvim",
  ft = { "ruby" },
  config = function()
    require("ruby-namespace-copy").setup()
    vim.keymap.set("n", "<leader>yn", function()
      require("ruby-namespace-copy").copy_namespace()
    end, { desc = "Yank Ruby namespace" })
  end,
})
```

## Configuration

The plugin works out of the box with sensible defaults. Call `setup()` to initialize:

```lua
require("ruby-namespace-copy").setup()
```

## Usage

1. Place your cursor anywhere inside a Ruby class or module
2. Press `<leader>yn` (or your configured keymap)
3. The fully qualified namespace is copied to your clipboard

### API

```lua
-- Copy namespace to clipboard (with notification)
require("ruby-namespace-copy").copy_namespace()

-- Get namespace as string (returns nil if not found)
local namespace = require("ruby-namespace-copy").get_namespace()
```

## Example

Given this Ruby file:

```ruby
module MyApp
  module Services
    class UserCreator
      def call
        # cursor here
      end
    end
  end
end
```

With cursor inside the `call` method, calling `copy_namespace()` will copy `MyApp::Services::UserCreator` to your clipboard.

## License

MIT

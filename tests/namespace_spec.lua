describe("ruby-namespace-copy", function()
  describe("namespace.get()", function()
    it("returns nil for non-ruby filetypes", function()
      local original_filetype = vim.bo.filetype
      vim.bo.filetype = "lua"

      package.loaded["ruby-namespace-copy.namespace"] = nil
      local namespace = require("ruby-namespace-copy.namespace")

      local result = namespace.get()
      assert.is_nil(result)

      vim.bo.filetype = original_filetype
    end)
  end)

  describe("init module", function()
    it("exports setup function", function()
      package.loaded["ruby-namespace-copy"] = nil
      local plugin = require("ruby-namespace-copy")

      assert.is_function(plugin.setup)
    end)

    it("exports copy_namespace function", function()
      package.loaded["ruby-namespace-copy"] = nil
      local plugin = require("ruby-namespace-copy")

      assert.is_function(plugin.copy_namespace)
    end)

    it("exports get_namespace function", function()
      package.loaded["ruby-namespace-copy"] = nil
      local plugin = require("ruby-namespace-copy")

      assert.is_function(plugin.get_namespace)
    end)

    it("setup accepts options table", function()
      package.loaded["ruby-namespace-copy"] = nil
      local plugin = require("ruby-namespace-copy")

      assert.has_no.errors(function()
        plugin.setup({})
      end)
    end)

    it("setup accepts nil options", function()
      package.loaded["ruby-namespace-copy"] = nil
      local plugin = require("ruby-namespace-copy")

      assert.has_no.errors(function()
        plugin.setup()
      end)
    end)
  end)
end)

local M = {}

function M.get()
  local ts_utils = require("nvim-treesitter.ts_utils")
  local parsers = require("nvim-treesitter.parsers")

  if vim.bo.filetype ~= "ruby" then return nil end

  if not parsers.has_parser("ruby") then
    vim.notify("Ruby parser not available", vim.log.levels.ERROR)
    return nil
  end

  local current_node = ts_utils.get_node_at_cursor()
  if not current_node then return nil end

  local namespace_parts = {}
  local node = current_node

  while node do
    local node_type = node:type()

    if node_type == "class" or node_type == "module" then
      local name_node = nil

      for child in node:iter_children() do
        if child:type() == "constant" or child:type() == "scope_resolution" then
          name_node = child
          break
        end
      end

      if name_node then
        local name = vim.treesitter.get_node_text(name_node, 0)

        if name_node:type() == "scope_resolution" then
          for child in name_node:iter_children() do
            if child:type() == "constant" then name = vim.treesitter.get_node_text(child, 0) end
          end
        end

        table.insert(namespace_parts, 1, name)
      end
    end

    node = node:parent()
  end

  if #namespace_parts == 0 then return nil end

  return table.concat(namespace_parts, "::")
end

return M

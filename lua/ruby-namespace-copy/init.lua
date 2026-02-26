local M = {}

local namespace = require("ruby-namespace-copy.namespace")

function M.setup(opts) M.options = vim.tbl_deep_extend("force", {}, opts or {}) end

function M.copy_namespace()
  local ns = namespace.get()

  if not ns then
    vim.notify("No Ruby class or module found at cursor", vim.log.levels.WARN)
    return
  end

  vim.fn.setreg("+", ns)
  vim.notify("Copied: " .. ns, vim.log.levels.INFO)
end

function M.get_namespace() return namespace.get() end

return M

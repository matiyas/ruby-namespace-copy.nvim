vim.opt.rtp:append(".")

vim.bo = vim.bo or setmetatable({}, {
  __index = function()
    return {}
  end,
})

vim.fn = vim.fn or {}
vim.fn.filereadable = vim.fn.filereadable or function()
  return 0
end
vim.fn.isdirectory = vim.fn.isdirectory or function()
  return 0
end

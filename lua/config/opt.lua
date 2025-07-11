vim.opt.number = true -- Line numbers in gutter
vim.opt.mouse = "a" -- Mouse support (:help mouse)
vim.opt.ignorecase = true -- Ignore case in searches...
vim.opt.smartcase = true -- ...unless the search has an uppercase letter
vim.opt.hlsearch = false -- Don't highlight previous search results
vim.opt.wrap = true -- Wrap text of long lines
vim.opt.breakindent = true -- Preserve indentation of wrapped lines

vim.opt.tabstop = 2 -- Tabstop character size
vim.opt.shiftwidth = 2 -- Line indent size
vim.opt.expandtab = true -- Convert tabs to spaces

vim.opt.swapfile = false

-- 'z' should fold with code expressions using treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldlevel = 9
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

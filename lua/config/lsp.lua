local picker = require("snacks.picker")

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("global.lsp", { clear = true }),
  callback = function(args)
    -- local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    local bufnr = args.buf

    local set_description = function(desc)
      return { noremap = true, silent = true, buffer = bufnr, desc = desc }
    end

    vim.keymap.set("n", "gD", picker.lsp_declarations, set_description("Go to declarations"))
    vim.keymap.set("n", "gd", picker.lsp_definitions, set_description("Go to definitions"))
    vim.keymap.set("n", "K", vim.lsp.buf.hover, set_description("Hover info"))
    vim.keymap.set("n", "gi", picker.lsp_implementations, set_description("Go to implementations"))
    vim.keymap.set("n", "grn", vim.lsp.buf.rename, set_description("Rename"))
    vim.keymap.set("n", "grr", picker.lsp_references, set_description("Go to references"))
    vim.keymap.set("n", "<leader>d", picker.diagnostics, set_description("Diagnostics"))
  end,
})

local picker = require("snacks.picker")

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
    -- Copy/Paste from clipboard
    { "<leader>p", '"+p', desc = "Paste from clipboard", mode = { "n", "v" } },
    { "<leader>y", '"+y', desc = "Yank selection to clipboard", mode = { "n", "v" } },

    -- Buffers
    {
      "<leader>b",
      function()
        picker.buffers()
      end,
      desc = "Buffers",
    },

    -- Registers
    {
      "<leader>r",
      function()
        picker.registers()
      end,
      desc = "Registers",
    },

    -- Commands
    {
      "<leader>c",
      function()
        picker.commands()
      end,
      desc = "Commands",
    },

    -- File explorer
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "File explorer",
    },

    -- Pick files
    { "<leader>f", group = "files" },
    {
      "<leader>ff",
      function()
        picker.files()
      end,
      desc = "Find file",
    },
    {
      "<leader>fg",
      function()
        picker.git_files()
      end,
      desc = "Git repository files",
    },
    {
      "<leader>fr",
      function()
        picker.recent()
      end,
      desc = "Recent files",
    },

    -- execute Lua code
    {
      "<leader>x",
      ":.lua<CR>",
      desc = "Lua eval current line",
      mode = { "n" },
    },
    {
      "<leader>x",
      ":lua<CR>",
      desc = "Lua eval highlighted text",
      mode = { "v" },
    },

    -- Grep
    {
      "<leader>sb",
      function()
        picker.lines()
      end,
      desc = "Buffer Lines",
    },
    {
      "<leader>sB",
      function()
        picker.grep_buffers()
      end,
      desc = "Grep Open Buffers",
    },
    {
      "<leader>sg",
      function()
        picker.grep()
      end,
      desc = "Grep",
    },
    {
      "<leader>sw",
      function()
        picker.grep_word()
      end,
      desc = "Visual selection or word",
      mode = { "n", "x" },
    },
    {
      "<leader>sk",
      function()
        Snacks.picker.keymaps()
      end,
      desc = "Keymaps",
    },

    -- Help
    {
      "<leader>sh",
      function()
        Snacks.picker.help()
      end,
      desc = "Help Pages",
    },

    -- Git
    {
      "<leader>gl",
      function()
        Snacks.picker.git_log()
      end,
      desc = "Git Log",
    },
    {
      "<leader>gs",
      function()
        Snacks.picker.git_status()
      end,
      desc = "Git Status",
    },
  },
}

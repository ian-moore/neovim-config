return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "echasnovski/mini.icons",
  },
  config = function()
    -- mini.icons
    require("mini.icons").setup()

    -- mock nvim-web-devicons to use mini.icons instead
    require("mini.icons").mock_nvim_web_devicons()

    require("lualine").setup({
      -- your config
    })
  end,
}

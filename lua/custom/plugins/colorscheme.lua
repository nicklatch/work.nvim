return {
  -- {
  --   'nyoom-engineering/oxocarbon.nvim',
  --   init = function()
  --     vim.opt.background = 'dark'
  --     vim.cmd.colorscheme 'oxocarbon'
  --   end,
  -- },
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000,
  --   init = function()
  --     vim.cmd.colorscheme 'catppuccin'
  --   end,
  -- },
  {
    'uloco/bluloco.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      style = 'dark'
    end,
    init = function()
      vim.cmd.colorscheme 'tokyonight-moon'
    end,
  },
}

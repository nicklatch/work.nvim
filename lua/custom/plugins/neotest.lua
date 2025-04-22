return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'olimorris/neotest-phpunit',
      'V13Axel/neotest-pest',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-phpunit',
          require 'neotest-pest' {
            pest_cmd = 'vendor/bin/pest',
          },
        },
      }

      vim.keymap.set('n', '<leader>nn', function()
        require('neotest').run.run()
      end, { desc = '[N]eotest run [n]earest file' })
      vim.keymap.set('n', '<leader>nf', function()
        require('neotest').run.run(vim.fn.expand '%')
      end, { desc = '[N]eotest run [f]ile' })

      vim.keymap.set('n', '<leader>ns', function()
        require('neotest').run.run { suite = true }
      end, { desc = '[N]eotest run [s]uite' })
    end,
  },
}

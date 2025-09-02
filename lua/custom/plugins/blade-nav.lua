return {
  {
    'ricardoramirezr/blade-nav.nvim',
    dependencies = { -- totally optional
      'saghen/blink.cmp',
    },
    ft = { 'blade', 'php' }, -- optional, improves startup time
    opts = {
      close_tag_on_complete = true, -- default: true
    },
  },
}

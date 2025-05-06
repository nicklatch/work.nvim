-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Filter Phpactor diagnostics
vim.lsp.handlers['textDocument/publishDiagnostics'] = function(err, result, ctx)
  if not result then
    return
  end

  local client = vim.lsp.get_client_by_id(ctx.client_id)
  if client and client.name == 'phpactor' then
    local filtered_diagnostics = {}
    for _, diagnostic in ipairs(result.diagnostics) do
      if not diagnostic.message:match 'docblock' then
        table.insert(filtered_diagnostics, diagnostic)
      end
    end
    result.diagnostics = filtered_diagnostics
  end

  vim.lsp.diagnostic.on_publish_diagnostics(err, result, ctx)
end

return {
  -- vim.filetype.add {
  --   pattern = {
  --     ['.*%.blade%.php'] = 'php',
  --   },
  -- },
  vim.keymap.set('i', ';;', '<Esc>A;<Esc>'),
  vim.keymap.set('n', ';;', '<Esc>A;<Esc>'),
  vim.keymap.set('i', ',,', '<Esc>A,<Esc>'),
  vim.keymap.set('n', ',,', '<Esc>A,<Esc>'),
}

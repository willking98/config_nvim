return {
  'hrsh7th/nvim-cmp',
  config = function()
    local cmp = require 'cmp'

    cmp.setup {
      mapping = {
        ['<Tab>'] = cmp.mapping.confirm { select = true }, -- Confirm selection with Tab
        ['<C-n>'] = cmp.mapping.select_next_item(), -- Select next item
        ['<C-p>'] = cmp.mapping.select_prev_item(), -- Select previous item
      },
      sources = {
        { name = 'nvim_lsp' }, -- Ensure you have LSP configured separately
        { name = 'buffer' }, -- Ensure buffer completion
        { name = 'path' }, -- Path completions
      },
    }
  end,
}

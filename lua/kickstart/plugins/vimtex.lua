return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'tex',
      callback = function()
        vim.api.nvim_set_keymap('n', '<Space>t', ':VimtexTocToggle<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
      end,
    })

    vim.g.vimtex_compiler_method = 'latexrun'
    vim.g.vimtex_compiler_latexrun = {
      exe = 'latexrun',
      err_log = true,
    }
    vim.g.vimtex_view_method = 'zathura'
  end,
}

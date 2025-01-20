return {
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = {
      { 'rafamadriz/friendly-snippets' }, -- Add cmp-bibtex as a dependency
    },

    -- use a release tag to download pre-built binaries
    version = 'v0.*', -- Use a release tag for pre-built binaries

    opts = {
      keymap = { preset = 'default' }, -- Set your preferred keymap preset

      appearance = {
        use_nvim_cmp_as_default = true, -- Use nvim-cmp sources as default
        nerd_font_variant = 'mono', -- Appearance customization
      },

      signature = { enabled = true }, -- Enable signature help

      -- Ensure sources is a table, not a function
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' }, -- Add cmp-bibtex source for BibTeX completion
      },
    },
  },
}

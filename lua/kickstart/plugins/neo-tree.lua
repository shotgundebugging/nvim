-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  init = function()
    -- Neo-tree will handle directory buffers.
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'neo-tree',
      callback = function()
        -- Wipe hidden neo-tree buffers so they don't collide on reopen.
        vim.opt_local.bufhidden = 'wipe'
      end,
    })
  end,
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      follow_current_file = true,
      hijack_netrw_behavior = 'open_default',
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    window = {
      position = 'left',
    },
  },
  config = function(_, opts)
    require('neo-tree').setup(opts)
    vim.schedule(function()
      vim.cmd 'Neotree show'
    end)
  end,
}

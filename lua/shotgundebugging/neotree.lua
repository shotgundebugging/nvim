print 'shotgundebugging.neotree required'
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true, -- Close Neo-tree if it's the last window open
      popup_border_style = 'rounded',
      enable_git_status = true,
      enable_diagnostics = true,
      default_component_configs = {
        git_status = {
          icon = {
            folder_closed = '',
            folder_open = '',
            folder_empty = '󰜌',
            provider = function(icon, node, state) -- default icon provider utilizes nvim-web-devicons if available
              if node.type == 'file' or node.type == 'terminal' then
                local success, web_devicons = pcall(require, 'nvim-web-devicons')
                local name = node.type == 'terminal' and 'terminal' or node.name
                if success then
                  local devicon, hl = web_devicons.get_icon(name)
                  icon.text = devicon or icon.text
                  icon.highlight = hl or icon.highlight
                end
              end
            end,
            -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
            -- then these will never be used.
            default = '*',
            highlight = 'NeoTreeFileIcon',
          },
          symbols = {
            added = '✚',
            modified = '',
            deleted = '✖',
            renamed = '➜',
            untracked = '★',
            ignored = '◌',
            unstaged = '✗',
            staged = '✓',
            conflict = '',
          },
        },
      },
      window = {
        position = 'left',
        width = 30,
        mappings = {
          ['<space>'] = 'toggle_node',
          ['<cr>'] = 'open',
          ['a'] = 'add',
          ['d'] = 'delete',
          ['r'] = 'rename',
          ['y'] = 'copy_to_clipboard',
          ['p'] = 'paste_from_clipboard',
          ['c'] = 'cut_to_clipboard',
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            '.DS_Store',
            'thumbs.db',
          },
        },
        follow_current_file = true,
        hijack_netrw_behavior = 'open_default',
        use_libuv_file_watcher = true,
      },
    }
  end,
}

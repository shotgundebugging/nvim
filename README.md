# My Neovim Config

This configuration started from [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) and was customized for my workflow.

## Customizations

- Added personal modules under `lua/shotgundebugging/`.
- Indentation defaults set to 2 spaces (`expandtab`, `shiftwidth`, `softtabstop`, `tabstop`).
- Removed `_` from `iskeyword` so `snake_case` is treated as separate words.
- Added navigation/editing remaps:
  - Move selected blocks with `J`/`K` in visual mode.
  - Keep cursor centered for half-page jumps and search matches.
  - Paste without overwriting yank register (`<leader>p`).
  - System clipboard yanks (`<leader>y`, `<leader>Y`).
  - Quickfix/location list navigation (`<C-j>`, `<C-k>`, `<leader>j`, `<leader>k`).
  - Word replace helper (`<leader>s`) and chmod helper (`<leader>x`).
- Added Neo-tree shortcuts:
  - `<leader>e` toggle
  - `<leader>t` focus
  - `<leader>tt` reveal
- Added Telescope shortcut:
  - `<leader><leader>` for recent files.
- Added diagnostic shortcuts:
  - `[d` previous diagnostic
  - `]d` next diagnostic
  - `<leader>af` apply fix for current diagnostic
- Added formatting shortcut:
  - `<leader>rb` format with LSP (RuboCop workflow)
- Added file utility:
  - `<leader>cf` copy current file absolute path to system clipboard.

## Packages

- `tpope/vim-sleuth` - Detects indentation settings automatically from file content.
- `lewis6991/gitsigns.nvim` - Shows Git diff signs in the gutter and adds hunk actions.
- `folke/which-key.nvim` - Displays available keybindings as you type prefixes.
- `nvim-telescope/telescope.nvim` - Fuzzy finder for files, symbols, grep, and commands.
- `nvim-telescope/telescope-fzf-native.nvim` - Native FZF sorter extension for faster Telescope matching.
- `nvim-telescope/telescope-ui-select.nvim` - Makes vim.ui.select use Telescope pickers.
- `nvim-lua/plenary.nvim` - Lua utility library dependency used by many plugins.
- `nvim-tree/nvim-web-devicons` - Filetype icons used across UI plugins.
- `ThePrimeagen/harpoon` - Quick file marking and jumping workflow.
- `jiaoshijie/undotree` - Visual interface for browsing undo history.
- `rmagatti/auto-session` - Automatic session save/restore between Neovim runs.
- `folke/lazydev.nvim` - Better Lua LSP experience for Neovim plugin/config development.
- `Bilal2453/luvit-meta` - Lua type metadata used by lazydev/Lua language tooling.
- `neovim/nvim-lspconfig` - Config helpers for Neovim's built-in LSP client.
- `williamboman/mason.nvim` - Installer/manager for LSP servers, linters, and formatters.
- `williamboman/mason-lspconfig.nvim` - Bridge between Mason and lspconfig server setup.
- `WhoIsSethDaniel/mason-tool-installer.nvim` - Ensures configured Mason tools are installed automatically.
- `j-hui/fidget.nvim` - LSP progress/status notifications.
- `hrsh7th/cmp-nvim-lsp` - nvim-cmp source for LSP completion items.
- `hrsh7th/nvim-cmp` - Completion engine for insert mode suggestions.
- `L3MON4D3/LuaSnip` - Snippet engine used by completion and manual snippet expansion.
- `saadparwaiz1/cmp_luasnip` - nvim-cmp source for LuaSnip snippets.
- `hrsh7th/cmp-path` - nvim-cmp source for filesystem path completion.
- `rafamadriz/friendly-snippets` - Community snippet collection for LuaSnip.
- `stevearc/conform.nvim` - Formatter runner with LSP fallback support.
- `folke/tokyonight.nvim` - Colorscheme used by this config.
- `folke/todo-comments.nvim` - Highlights and searches TODO/FIXME-style comments.
- `echasnovski/mini.nvim` - Collection of lightweight modules (ai, surround, statusline, etc.).
- `nvim-treesitter/nvim-treesitter` - Tree-sitter syntax parsing for better highlighting and code understanding.
- `numToStr/Comment.nvim` - Fast line/block comment toggling.
- `windwp/nvim-autopairs` - Auto-inserts matching brackets, quotes, and pairs.
- `nvim-neo-tree/neo-tree.nvim` - File explorer sidebar with Git and diagnostics integration.
- `MunifTanjim/nui.nvim` - UI component library used by plugins like Neo-tree.
- `mfussenegger/nvim-dap` - Debug Adapter Protocol client for Neovim.
- `rcarriga/nvim-dap-ui` - UI panels and controls for nvim-dap sessions.
- `nvim-neotest/nvim-nio` - Async primitives used by modern Neovim testing/debug plugins.
- `jay-babu/mason-nvim-dap.nvim` - Mason integration for installing DAP adapters.
- `leoluz/nvim-dap-go` - Go-specific debugging helpers for nvim-dap.
- `mfussenegger/nvim-lint` - Asynchronous linting integration.
- `lukas-reineke/indent-blankline.nvim` - Indentation guides and scope visualization.
- `stevearc/oil.nvim` - Edit directories as buffers for file operations.

## Notes

- Base config: kickstart.nvim
- Plugin versions are pinned in `lazy-lock.json`.

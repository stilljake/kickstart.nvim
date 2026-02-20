-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    close_if_last_window = true,
    default_component_configs = {
      icon = {
        folder_closed = '>',
        folder_open = 'v',
        folder_empty = '>',
        default = ' ',
      },
      git_status = {
        symbols = {
          added = '+',
          modified = '~',
          deleted = 'x',
          renamed = 'r',
          untracked = '?',
          ignored = '-',
          unstaged = 'u',
          staged = 's',
          conflict = '!',
        },
      },
    },
    filesystem = {
      hijack_netrw_behavior = 'disabled',
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}

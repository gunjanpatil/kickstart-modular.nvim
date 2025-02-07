return {
  {
    'alexghergh/nvim-tmux-navigation',
    config = function()
      require('nvim-tmux-navigation').setup {
        -- Add your configuration here, for example:
        disable_when_zoomed = true, -- Disable navigation when tmux is zoomed
        keybindings = {
          left = '<C-h>',
          down = '<C-j>',
          up = '<C-k>',
          right = '<C-l>',
        },
      }
    end,
  },
}

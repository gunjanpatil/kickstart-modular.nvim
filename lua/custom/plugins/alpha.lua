return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    local header = {
      [[     _/\/\____/\/\__________________________/\/\____/\/\__/\/\___________________]],
      [[    _/\/\/\__/\/\____/\/\/\______/\/\/\____/\/\____/\/\__________/\/\/\__/\/\___ ]],
      [[   _/\/\/\/\/\/\__/\/\/\/\/\__/\/\__/\/\__/\/\____/\/\__/\/\____/\/\/\/\/\/\/\_  ]],
      [[  _/\/\__/\/\/\__/\/\________/\/\__/\/\____/\/\/\/\____/\/\____/\/\__/\__/\/\_   ]],
      [[ _/\/\____/\/\____/\/\/\/\____/\/\/\________/\/\______/\/\/\__/\/\______/\/\_    ]],
      [[____________________________________________________________________________     ]],
    }

    local footer = function()
      local stats = require('lazy').stats()
      local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
      return {
        '⚡ Neovim loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins in ' .. ms .. 'ms',
      }
    end

    local startify = require 'alpha.themes.startify'
    startify.section.header.val = header
    alpha.setup(startify.opts)
  end,
}

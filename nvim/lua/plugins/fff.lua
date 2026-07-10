return {
  'dmtrKovalenko/fff.nvim',
  build = function()
    -- downloads a prebuilt binary or falls back to cargo build
    require("fff.download").download_or_build_binary()
  end,
  -- for nixos:
  -- build = "nix run .#release",
  opts = {
    debug = {
      enabled = false,
      show_scores = false,
      show_file_info = false,
    },
    frecency = {
      enabled = false,
    },
    history = {
      enabled = false,
    },
    layout = {
      preview_position = 'right',
      preview_size = 0.55,
    },
    preview = {
      enabled = true,
    },
    keymaps = {
      move_up = { '<Up>', '<C-p>', '<C-k>' },
      move_down = { '<Down>', '<C-n>', '<C-j>' },
    },
  },
  lazy = false, -- the plugin lazy-initialises itself
  keys = {
    { "<space>sf", function() require('fff').find_files() end, desc = 'FFFind files' },
    { "<space>ss", function() require('fff').live_grep() end, desc = 'LiFFFe grep' },
    { "fz",
      function() require('fff').live_grep({ grep = { modes = { 'fuzzy', 'plain' } } }) end,
      desc = 'Live fffuzy grep',
    },
    { "fw",
      function() require('fff').live_grep_under_cursor() end,
      mode = { 'n', 'x' },
      desc = 'Search current word / selection',
    },
  },
}

require 'core.options'  -- Load general options
require 'core.keymaps'  -- Load general keymaps
-- require 'core.snippets' -- Custom code snippets

-- Install package manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Import color theme based on environment variable NVIM_THEME
local default_color_scheme = 'nord'
local env_var_nvim_theme = os.getenv 'NVIM_THEME' or default_color_scheme

-- Define a table of theme modules
local themes = {
  nord = 'plugins.themes.nord',
  onedark = 'plugins.themes.onedark',
}

-- Setup plugins
require('lazy').setup({
  require(themes[env_var_nvim_theme]),
  require 'lua.plugins.telescope',
  require 'lua.plugins.treesitter',
  require 'lua.plugins.lsp',
  require 'lua.plugins.autocompletion',
  require 'lua.plugins.none-ls',
  require 'lua.plugins.lualine',
  require 'lua.plugins.bufferline',
  require 'lua.plugins.neo-tree',
  require 'lua.plugins.alpha',
  require 'lua.plugins.indent-blankline',
  require 'lua.plugins.lazygit',
  require 'lua.plugins.comment',
  require 'lua.plugins.debug',
  require 'lua.plugins.gitsigns',
  require 'lua.plugins.database',
  require 'lua.plugins.misc',
  require 'lua.plugins.harpoon',
  -- require 'plugins.avante',
  -- require 'plugins.chatgpt',
  -- require 'plugins.aerial',
  require 'lua.plugins.vim-tmux-navigator',
}, {
  ui = {
    -- If you have a Nerd Font, set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- Function to check if a file exists
local function file_exists(file)
  local f = io.open(file, 'r')
  if f then
    f:close()
    return true
  else
    return false
  end
end

-- Path to the session file
local session_file = '.session.vim'

-- Check if the session file exists in the current directory
if file_exists(session_file) then
  -- Source the session file
  vim.cmd('source ' .. session_file)
end



local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = false -- highlight the current cursor line

-- mouse mode
opt.mouse = 'a' --Enable Mouse Mode (default: '')

-- appearance
-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = 'dark' -- colorschemes that can be light or dark will be made dark
opt.signcolumn = 'yes' -- show sign column so that text doesn't shift

-- backspace
opt.backspace = 'indent,eol,start' -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append 'unnamedplus' -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- Additional settings from the first configuration
opt.updatetime = 250 -- Decrease update time for faster response
opt.timeoutlen = 300 -- Time to wait for mapped sequence completion (ms)
opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience
opt.scrolloff = 4 -- minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 8 -- minimal number of screen columns either side of cursor if wrap is `false`
opt.softtabstop = 2 -- Number of spaces that a tab counts for while performing editing operations (matching your tabstop)
opt.pumheight = 10 -- pop up menu height
opt.showtabline = 2 -- always show tabs
opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
opt.conceallevel = 0 -- so that `` is visible in markdown files
opt.fileencoding = 'utf-8' -- the encoding written to a file
opt.undofile = true -- Save undo history
opt.writebackup = false -- if a file is being edited by another program, it is not allowed to be edited
opt.breakindent = true -- Enable break indent
opt.linebreak = true -- companion to wrap, don't split words
opt.showmode = false -- we don't need to see things like -- INSERT -- anymore

-- Additional format options
opt.formatoptions:remove { 'c', 'r', 'o' } -- don't insert the current comment leader automatically
opt.iskeyword:append '-' -- hyphenated words recognized by searches
opt.shortmess:append 'c' -- don't give completion menu messages
opt.runtimepath:remove '/usr/share/vim/vimfiles' -- separate vim plugins from neovim

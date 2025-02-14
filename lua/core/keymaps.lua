-- set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk/kj to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "kj", "<ESC>", { desc = "Exit insert mode with kj" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x', { desc = "Delete single character without copying" })

-- save file
keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })

-- save file without formatting
keymap.set("n", "<leader>sn", "<cmd>noautocmd w<CR>", { desc = "Save file without formatting" })

-- quit file
keymap.set("n", "<C-q>", "<cmd> q <CR>", { desc = "Quit file" })

-- markdown preview
keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<cr>", { desc = "Toggle markdown preview" })

---------------------
-- Window Management
---------------------

-- window splits
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- window navigation
keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Navigate to left window" })
keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Navigate to bottom window" })
keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Navigate to top window" })
keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Navigate to right window" })

-- window resizing
keymap.set("n", "<Up>", ":resize -2<CR>", { desc = "Decrease window height" })
keymap.set("n", "<Down>", ":resize +2<CR>", { desc = "Increase window height" })
keymap.set("n", "<Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
keymap.set("n", "<Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

---------------------
-- Tab Management
---------------------

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

---------------------
-- Buffer Management
---------------------

keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>x", ":Bdelete!<CR>", { desc = "Close current buffer" })
keymap.set("n", "<leader>b", "<cmd>enew<CR>", { desc = "Create new buffer" })

---------------------
-- Text Manipulation
---------------------

-- stay in indent mode
keymap.set("v", "<", "<gv", { desc = "Decrease indent and stay in visual mode" })
keymap.set("v", ">", ">gv", { desc = "Increase indent and stay in visual mode" })

-- move text up and down
keymap.set("v", "<A-j>", ":m .+1<CR>==", { desc = "Move text down" })
keymap.set("v", "<A-k>", ":m .-2<CR>==", { desc = "Move text up" })

-- keep last yanked when pasting
keymap.set("v", "p", '"_dP', { desc = "Paste without overwriting register" })

-- replace word under cursor
keymap.set("n", "<leader>j", '*``cgn', { desc = "Replace word under cursor" })

-- clipboard operations
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })

---------------------
-- Search and Navigation
---------------------

-- vertical scroll and center
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

-- find and center
keymap.set("n", "n", "nzzzv", { desc = "Next search result and center" })
keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center" })

---------------------
-- Diagnostics
---------------------

keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostic float" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

---------------------
-- Session Management
---------------------

keymap.set("n", "<leader>ss", ":mksession! .session.vim<CR>", { desc = "Save session", silent = false })
keymap.set("n", "<leader>sl", ":source .session.vim<CR>", { desc = "Load session", silent = false })
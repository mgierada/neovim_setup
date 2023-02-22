-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>[", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>]", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------
-- vimtest
keymap.set("n", "<leader>t", ":TestNearest -strategy=neovim<CR>") -- test nearest function
keymap.set("n", "<leader>T", ":TestFile -strategy=neovim<CR>") -- test current file
keymap.set("n", "<leader>ta", ":TestSuite -strategy=neovim<CR>") -- test current suite
keymap.set("n", "<leader>tl", ":TestLast -strategy=neovim<CR>") -- re-run last test
keymap.set("n", "<leader>tv", ":TestVisit -strategy=neovim<CR>") -- visit last test
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- f-person (aka git blame)
keymap.set("n", "<leader>gbt", ":GitBlameToggle<CR>") -- toggle git blame on current line

-- nvim-dap
keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>") -- toggle breakpoint
keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>") -- continue
keymap.set("n", "<leader>di", ":lua require'dap'.step_into()<CR>") -- step into
keymap.set("n", "<leader>do", ":lua require'dap'.step_over()<CR>") -- step over
keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>") -- open repl
keymap.set("n", "<leader>dl", ":lua require'dap'.run_last()<CR>") -- run last debug sessionkj
keymap.set("n", "<leader>dt", ":lua require'dap-python'.test_method()<CR>") -- open frames view

-- git mergetool
keymap.set("n", "<leader>gm", ":Gvdiffsplit!<CR>") -- open git mergetool
keymap.set("n", "<leader>gmc", ":diffget //2<CR>") -- get current change
keymap.set("n", "<leader>gml", ":diffget LO<CR>") -- accept local change
keymap.set("n", "<leader>gmr", ":diffget RE<CR>") -- remote change
keymap.set("n", "<leader>gmb", ":diffget BA<CR>") -- original base

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>q", "<cmd>q<CR>", opts)
map("n", "<leader>Q", "<cmd>qa!<CR>", opts)
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)
map("n", "<leader>pv", vim.cmd.Ex, opts)
map("n", "<leader>v", "V", opts)



-- 类 IDE 快捷键
map({ "n", "i" }, "<C-a>", "<Esc>ggVG", opts)
map({ "n", "i" }, "<C-s>", "<Esc><cmd>w<CR>", opts)
map("n", "<C-z>", "u", opts)
map("i", "<C-z>", "<Esc>u", opts)
map("v", "<C-c>", "y", opts)
map("v", "<C-x>", "d", opts)

-- Shift 选择（按住 Shift+方向键选中，松开后按方向键取消选中）
map({ "n", "i" }, "<S-Left>", "<Esc>v<Left>", opts)
map({ "n", "i" }, "<S-Right>", "<Esc>v<Right>", opts)
map({ "n", "i" }, "<S-Up>", "<Esc>v<Up>", opts)
map({ "n", "i" }, "<S-Down>", "<Esc>v<Down>", opts)
map({ "n", "i" }, "<S-Home>", "<Esc>v<Home>", opts)
map({ "n", "i" }, "<S-End>", "<Esc>v<End>", opts)
map("v", "<S-Left>", "<Left>", opts)
map("v", "<S-Right>", "<Right>", opts)
map("v", "<S-Up>", "<Up>", opts)
map("v", "<S-Down>", "<Down>", opts)
map("v", "<S-Home>", "<Home>", opts)
map("v", "<S-End>", "<End>", opts)
map("v", "<Left>", "<Esc>h", opts)
map("v", "<Right>", "<Esc>l", opts)
map("v", "<Up>", "<Esc>k", opts)
map("v", "<Down>", "<Esc>j", opts)
map("v", "<Home>", "<Esc>0", opts)
map("v", "<End>", "<Esc>$", opts)

-- 窗口导航
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- 行移动
map("n", "<A-j>", "<cmd>m .+1<CR>==", opts)
map("n", "<A-k>", "<cmd>m .-2<CR>==", opts)
map("i", "<A-j>", "<Esc><cmd>m .+1<CR>==", opts)
map("i", "<A-k>", "<Esc><cmd>m .-2<CR>==", opts)

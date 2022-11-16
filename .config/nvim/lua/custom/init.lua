vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format({ bufnr = bufnr })]]

local present, impatient = pcall(require, "impatient")
if present then
	impatient.enable_profile()
end
local opt = vim.opt
local g = vim.g

g.copilot_node_command = "~/.nvm/version/node/v17.9.1/bin/node"
--g.copilot_no_tab_map = true

opt.browsedir = "buffer" -- place from NvTree browses dirs.
opt.clipboard = "unnamedplus" -- allow copy/paste from/to clipboard.
opt.cmdheight = 2 -- CMD height.
opt.cmdwinheight = 7 -- cmd window height.
opt.colorcolumn = "80" -- distance beetwen the first and the last column.
opt.columns = 135 -- width of the window.
opt.copyindent = true
opt.cursorbind = false -- move the cursor in the current windows. 
opt.cursorcolumn = false -- highlight the current column.
opt.cursorline = true -- highlight the current line.
opt.cursorlineopt = "both" -- highlight 'line', 'number', 'both', 'screenline'.
opt.display = "uhex" -- display the hex value of the char under the cursor.
opt.encoding = "utf-8" -- encoding.
opt.errorbells = true -- beep when an error occurs.
opt.expandtab = false -- use spaces instead of tabs.
--opt.fillchars = "vert:|,eob:"
--opt.fileencoding = "utf-8"
--opt.filetype = "on"
--opt.foldcolumn = "0"
--opt.foldenable = false
--opt.foldexpr = ""
--opt.foldlevel = 99
--opt.foldmethod = "indent"
--opt.foldnestmax = 10
--opt.foldtext = ""
opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
opt.hlsearch = true
opt.hidden = true
opt.ignorecase = true
opt.incsearch = true
opt.laststatus = 3
--opt.lazyredraw = true
--opt.linebreak = true
--opt.magic = true
opt.mouse = "a"
--opt.number = true
opt.numberwidth = 2
--opt.relativenumbers = true
--opt.ruler = true
opt.signcolumn = "yes"
opt.shiftwidth = 4
opt.shiftround = false
--opt.shortmess:append "sI"
--opt.showbreak = "↳ "
opt.showcmd = true
opt.showmode = false
opt.showtabline = 2
opt.showmatch = true
--opt.sidescrolloff = 8
--opt.smartcase = true
opt.smartindent = true
--opt.smarttab = true
opt.softtabstop = 4
--opt.spellcapcheck = ""
--opt.spellang = "en_us"
opt.splitbelow = true
opt.splitright = true
--opt.startofline = false
--opt.statusline = "[[%F%m%r%h%w%=%-14.(%l,%c%V%)%P]]"
--opt.textwidth = 80
--opt.swapfile = false
opt.tabstop = 4
opt.termguicolors = true
opt.title = true
--opt.tittlestring = "%<%F%=%l"
--opt.wildmenu = true

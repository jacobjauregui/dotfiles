vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format({ bufnr = bufnr })]]

local present, impatient = pcall(require, "impatient")
if present then
    impatient.enable_profile()
end

local opt = vim.opt
local g = vim.g
g.copilot_node_command = "/home/jacob/.nvm/version/node/v17.9.1/bin/node"

local enable_providers = {
    "python3_provider",
    "node_provider",
}

for _, plugin in pairs(enable_providers) do
    vim.g["loaded_" .. plugin] = nil
    vim.cmd("runtime " .. plugin)
end

opt.browsedir = "buffer"
opt.clipboard = "unnamedplus"
opt.cmdheight = 2
opt.cmdwinheight = 7
opt.colorcolumn = "80"
opt.columns = 136
-- opt.copyindent = true
opt.cursorbind = false
opt.cursorcolumn = false
opt.cursorline = true
opt.cursorlineopt = "both"
-- opt.display = "lastline"
opt.encoding = "utf-8"
opt.errorbells = true
-- opt.expandtab = false
-- opt.fillchars = "vert:|,eob:"
-- opt.fileencoding = "utf-8"
-- opt.filetype = "on"
-- opt.foldcolumn = "1"
-- opt.foldenable = false
-- opt.foldlevel = 99
-- opt.foldmethod = "indent"
-- opt.foldnestmax = 10
-- opt.foldtext = "v:lua.foldtext()"
opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
-- opt.guifont = { "Victor-Mono-Italic", "h16" }
opt.hlsearch = true
opt.hidden = true
-- opt.ignorecase = true
opt.incsearch = true
opt.laststatus = 3
-- opt.lazyredraw = true
-- opt.lastline = 2
-- opt.linebreak = true
-- opt.magic = true
opt.mouse = "a"
-- opt.number = true
opt.numberwidth = 2
-- opt.relativenumber = true
-- opt.ruler = true
opt.signcolumn = "yes"
opt.shiftwidth = 4
-- opt.shiftround = false
-- opt.shortmess = "filnxtToOFc"
-- opt.showbreak = "↳ "
opt.showcmd = true
opt.showmode = false
opt.showtabline = 4
opt.showmatch = true
-- opt.sidescrolloff = 8
-- opt.smartcase = true
opt.smartindent = true
-- opt.smarttab = true
opt.softtabstop = 2
-- opt.spellcapcheck = ""
opt.spellang = "en_us"
opt.splitbelow = true
opt.splitright = true
-- opt.startofline = false
-- opt.statusline = "[[%F%m%r$h%w%=%-14.(%l,%c%V%)%P]]"
-- opt.swapfile = false
-- opt.tabstop = 4
opt.termguicolors = true
-- opt.textwidth = 80
opt.title = true
-- opt.titlestring = "%<%F%=%l"
-- opt.wildmenu = true

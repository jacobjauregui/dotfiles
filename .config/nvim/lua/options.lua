--require "nvchad.options"
local o = vim.o
local g = vim.g

g.copilot_node_command = '~/.nvm/versions/node/v23.0.0/bin/node'
g.mapleader = ' '

o.number = true
o.colorcolumn = '80'
o.cursorline = true
o.cursorlineopt ='both'
o.autoindent = true
o.smarttab = false
o.expandtab = false
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.smartindent = true
o.wrap = false
o.hlsearch = true
o.incsearch = true
o.smartcase = true
o.numberwidth = 6
